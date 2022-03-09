#include "SplitBasicBlock.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/IR/Instructions.h"
#include <vector>

using std::vector;
using namespace llvm;
static cl::opt<int> splitNum("split_num", cl::init(2), cl::desc("Split<split_num> time(s) each BB"));
namespace{
    class SplitBasicBlock : public FunctionPass{
        public:
            static char ID;
            SplitBasicBlock() :FunctionPass(ID) {}
            bool runOnFunction(Function &F);
            bool containsPHI(BasicBlock *BB);
            void split(BasicBlock *BB);

    };
}

bool SplitBasicBlock::runOnFunction(Function &F) {
    vector<BasicBlock*> originBB;
    for(BasicBlock &BB : F) {
        originBB.push_back(&BB);
    }
    for(BasicBlock *BB : originBB) {
        if(!containsPHI(BB)){
            split(BB);
        }
    }
    return true;
}

bool SplitBasicBlock::containsPHI(BasicBlock *BB) {
    for(Instruction &I : *BB) {
        if(isa<PHINode>(&I)) {
            return true;
        }
    }
    return false;
}

void SplitBasicBlock::split(BasicBlock *BB) {
    int splitSize = (BB->size() + splitNum - 1) / splitNum;
    BasicBlock *curBB = BB;
    for(int i = 1; i < splitNum; i++) {
        int j = 0;
        for(Instruction &I : *curBB) {
            if(j++ == splitSize) {
                curBB = curBB->splitBasicBlock(&I);
                break;
            }
        }
    }
}

FunctionPass* llvm::createSplitBasicBlockPass() {
    return new SplitBasicBlock();
}

char SplitBasicBlock::ID = 0;

static RegisterPass<SplitBasicBlock> X("splitBB", "my pass for split basicBlock");
