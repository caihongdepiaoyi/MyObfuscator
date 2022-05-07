#define DEBUG_TYPE "objdiv"
#include <string>
#include <sstream>

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "../include/StringObfuscation.h"
#include "../include/CryptoUtils.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/ModuleUtils.h"

using namespace llvm;

STATISTIC(GlobalsEncoded, "Counts number of global variables encoded");

namespace llvm {

        struct encVar {
                public:
                        GlobalVariable *var;
                        uint8_t key;
        };

        class StringObfuscationPass: public llvm::ModulePass {
                public:
                static char ID; // pass identification
                bool is_flag = true;
                StringObfuscationPass() : ModulePass(ID) {}
                StringObfuscationPass(bool flag) : ModulePass(ID) {
                    srand(time(0));
                    is_flag = flag;
                }

                virtual bool runOnModule(Module &M) {
                        std::vector<GlobalVariable*> toDelConstGlob;
                        //std::vector<GlobalVariable*> encGlob;
                        std::vector<encVar*> encGlob;
                        for (Module::global_iterator gi = M.global_begin(), ge = M.global_end();gi != ge; ++gi) {
                                // Loop over all global variables
                                GlobalVariable* gv = &(*gi);
                                //errs() << "Global var " << gv->getName() << "\n";
                                //outs() << *gv << " ";
                                std::string::size_type str_idx = gv->getName().str().find(".str.");
                                //outs() << gv->getSection() << "\n";
                                std::string section(gv->getSection());
                                if (gv->getName().str().substr(0,4)==".str" && gv->isConstant() &&
                                    gv->hasInitializer() && isa<ConstantDataSequential>(gv->getInitializer()) &&
                                    section != "llvm.metadata" && section.find("__objc_methname") == std::string::npos) {
                                    ++GlobalsEncoded;
                                    // Duplicate global variable
                                    GlobalVariable *dynGV = new GlobalVariable(M,
                                        gv->getType()->getElementType(),
                                        !(gv->isConstant()), gv->getLinkage(),
                                        (Constant*) 0, gv->getName(),
                                        (GlobalVariable*) 0,
                                        gv->getThreadLocalMode(),
                                        gv->getType()->getAddressSpace()
                                    );
                                    dynGV->setInitializer(gv->getInitializer());
                                    std::string tmp=gv->getName().str();
                                    //errs()<<"GV: "<<*gv<<"\n";

                                    Constant *initializer = gv->getInitializer();
                                    ConstantDataSequential *cdata = dyn_cast<ConstantDataSequential>(initializer);
                                    //outs() << *cdata << "\n";
                                    if (cdata) {
                                                const char *orig = cdata->getRawDataValues().data();
                                                unsigned len = cdata->getNumElements()*cdata->getElementByteSize();

                                                encVar *cur = new encVar();
                                                cur->var = dynGV;
                                                //outs() << *cur->var << "\n";
                                                cur->key = rand();
                                                //outs() << cur->key << "\n";
                                                char *encr = const_cast<char *>(orig);
                                                // Simple xor encoding
                                                for (unsigned i = 0; i != len; ++i) {
                                                        encr[i] = orig[i]^cur->key;
                                                }

                                                // FIXME Second part of the unclean hack.
                                                dynGV->setInitializer(initializer);

                                                // Prepare to add decode function for this variable
                                                encGlob.push_back(cur);
                                        } else {
                                                // just copying default initializer for now
                                                dynGV->setInitializer(initializer);
                                        }
                                        gv->replaceAllUsesWith(dynGV);
                                        toDelConstGlob.push_back(gv);
                                    }
                              


                        }
                        outs() << "\n";

                        for (unsigned i = 0, e = toDelConstGlob.size(); i != e; ++i)
                                toDelConstGlob[i]->eraseFromParent();

                        addDecodeFunction(&M, &encGlob);


                        return true;
                }

               private:
               void addDecodeFunction(Module *mod, std::vector<encVar*> *gvars) {
                                           std::vector<Type*>FuncTy_args;
                        FunctionType* FuncTy = FunctionType::get(
                          /*Result=*/Type::getVoidTy(mod->getContext()),  // returning void
                          /*Params=*/FuncTy_args,  // taking no args
                          /*isVarArg=*/false);
                        uint64_t StringObfDecodeRandomName = rand();
                        std::string  random_str;
                        std::stringstream random_stream;
                        random_stream << StringObfDecodeRandomName;
                        random_stream >> random_str;
                        StringObfDecodeRandomName++;

                        auto c = mod->getOrInsertFunction(".datadiv_decode" + random_str, FuncTy);
                        auto Fun = dyn_cast<Constant>(c.getCallee());

                        Function* fdecode = cast<Function>(Fun);

                        fdecode->setCallingConv(CallingConv::C);


                        BasicBlock* entry = BasicBlock::Create(mod->getContext(), "entry", fdecode);

                        IRBuilder<> builder(mod->getContext());
                        builder.SetInsertPoint(entry);


                        for (unsigned i = 0, e = gvars->size(); i != e; ++i) {
                                GlobalVariable *gvar = (*gvars)[i]->var;
                                uint8_t key = (*gvars)[i]->key;

                                Constant *init = gvar->getInitializer();
                                ConstantDataSequential *cdata = dyn_cast<ConstantDataSequential>(init);

                                unsigned len = cdata->getNumElements()*cdata->getElementByteSize();
                                --len;

                                BasicBlock *preHeaderBB=builder.GetInsertBlock();
                                BasicBlock* for_body = BasicBlock::Create(mod->getContext(), "for-body", fdecode);
                                BasicBlock* for_end = BasicBlock::Create(mod->getContext(), "for-end", fdecode);
                                builder.CreateBr(for_body);
                                builder.SetInsertPoint(for_body);
                                PHINode *variable = builder.CreatePHI(Type::getInt32Ty(mod->getContext()), 2, "i");
                                Value *startValue = builder.getInt32(0);
                                Value *endValue = builder.getInt32(len);
                                variable->addIncoming(startValue, preHeaderBB);
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                                //LoadInst *Load=builder.CreateLoad(gvar);
                                //errs()<<"Load: "<<*(Load->getPointerOperand())<<"\n";
                                Value* indexList[2] = {ConstantInt::get(variable->getType(), 0), variable};
                                Value *const_key=builder.getInt8(key);
                                Value *GEP=builder.CreateGEP(gvar,ArrayRef<Value*>(indexList, 2),"arrayIdx");
                                LoadInst *loadElement=builder.CreateLoad(GEP,false);
                                loadElement->setAlignment(Align(1));
                                //errs()<<"Type: "<<*loadElement<<"\n";
                                //CastInst* extended = new ZExtInst(const_key, loadElement->getType(), "extended", for_body);
                                //Value* extended = builder.CreateZExtOrBitCast(const_key, loadElement->getType(),"extended");
                                Value *Xor = builder.CreateXor(loadElement,const_key,"xor");
                                StoreInst *Store = builder.CreateStore(Xor, GEP,false);
                                Store->setAlignment(Align(1));

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                Value *stepValue = builder.getInt32(1);
                                Value *nextValue = builder.CreateAdd(variable, stepValue, "next-value");
                                Value *endCondition = builder.CreateICmpULT(variable, endValue, "end-condition");
                                endCondition = builder.CreateICmpNE(endCondition, builder.getInt1(0), "loop-condition");
                                BasicBlock *loopEndBB = builder.GetInsertBlock();
                                builder.CreateCondBr(endCondition, loopEndBB, for_end);
                                builder.SetInsertPoint(for_end);
                                variable->addIncoming(nextValue, loopEndBB);

                              }
                              builder.CreateRetVoid();
                              appendToGlobalCtors(*mod,fdecode,0);

               }

        };

}

char StringObfuscationPass::ID = 0;
static RegisterPass<StringObfuscationPass> X("str", "Global variable (i.e., const char*) diversification pass");

Pass * llvm::createStringObfuscation(bool flag) {
    return new StringObfuscationPass(flag);
}

