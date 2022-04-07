#ifndef _STRING_OBFUSCATION_H_
#define _STRING_OBFUSCATION_H_

#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/CommandLine.h"
#include "CryptoUtils.h"
using namespace llvm;
using namespace std;

namespace llvm {
      Pass* createStringObfuscation(bool flag);
}
#endif

