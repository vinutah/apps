
#pragma once

// c++ system headers
#include <sstream>
#include <fstream>
#include <iterator>
#include <set>
#include <vector>
#include <algorithm>

// llvm headers
#include <llvm/IR/Module.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/DataLayout.h>
#include <llvm/IR/Argument.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/Intrinsics.h>
#include <llvm/IR/GlobalVariable.h>
#include <llvm/IR/DebugInfo.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Support/Debug.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/IR/DebugLoc.h>
#include <llvm/Target/TargetIntrinsicInfo.h>

using namespace llvm;
using namespace std;

#ifdef DEBUG
#undef DEBUG
#endif

static const string blacklist[] = {
  "shouldInject",
  "incrementInstCount",
  "print_faultStatistics",
  "__printInstCount",
  "printFaultInfo",
  "initializeFaultInjectionCampaign",
  "incrementFaultSiteHit",
  "incrementInstCount",
  "__printInstCount",
  "corruptIntData_16bit",
  "corruptIntData_32bit",
  "corruptIntData_64bit",
  "corruptIntData_8bit",
  "corruptIntData_1bit",
  "corruptFloatData_32bit",
  "corruptFloatData_64bit",
  "corruptFloatData_80bit",
  "corruptIntAdr_32bit",
  "corruptIntAdr_64bit",
  "corruptFloatAdr_32bit",
  "corruptFloatAdr_64bit",
  "print_faultStatistics",
  "printFaultInfo",
  "main",
  "onCountDownReachesZero",
  "isNextFaultInThisBB",
  "incrementFaultSiteCount",
  "onEnteringBB",
  "_ZNK3MPI8Cartcomm5CloneEv",
  "flushBBEntries",
  "_ZN11BBHistEntryC1Ev", // BBHistEntry::BBHistEntry()
  "_ZN11BBHistEntryC2Ev",
  "_ZN11BBHistEntryC3Ev", // Can anyone tell me why {1,2,3}?
  "writeFaultSiteHitHistogram",
  "_GLOBAL__I_a", // .text.startup
  "MY_SET_SIGSEGV_HANDLER",
  "EnableKulfi",
  "DisableKulfi",
  "injectSoftErrorIntTy16",
  "injectSoftErrorIntTy32",
  "injectSoftErrorIntTy64",
  "injectSoftErrorFloatTy",
  "injectSoftErrorDoubleTy"
};

/*! \brief Provides implementations for a bunch of utility functions.
 *
 */
class Common{

 public:
  Common();
  enum FSAlgo{
    FS_DATA, // Data sites (both integer and floating-point)
    FS_DINT, // Integer data sites
    FS_DFLO, // Floating-point data sites
    FS_ADDR, // Address sites
	FS_ADDG, // Address sites
	FS_ADDI, // Address sites
    FS_CTRL, // Scalar control-flow sites
    FS_VCTL, // Vector control-flow sites
    FS_MASK, // instruction involving mask instructions
    FS_BRDC, // broadcast instructions
    FS_ERROR
  };

  enum VectorFSType{
    FST_MSK, // Data sites (both integer and floating-point)
    FST_INSIDX, // Integer data sites
    FST_EXIDX, // Floating-point data sites
    FST_SHUFIDX, // Address sites
    FST_VCMP, // Vector control-flow sites
    FST_ERROR
  };

  enum PCTAlgo{
    PCT_FE, // Data sites (both integer and floating-point)
    PCT_ERROR
  };
  enum TargetType{
    DEFN,
    USER
  };

  enum ArchType{
    X86,
    NEON,
    NVVM,
    MIPS,
    SPU
  };

  enum Mode{
    INJECT,
    PROTECT
  };

  set<string> blacklistSet;
  static void printFSInfo(string fsname, int fscount);
  static set<string> splitAtSpace(string spltStr);
  static vector<string> splitAtSequence(string targetstr,
					set<char> sequence);
  static bool fileExists(const string fileName);
  static void replace_all(string &strname, const string findstr, const string repl);
  static Instruction* getInstrByValue(Function* func, Value* val);
  static string instrToString(Instruction* instr);
  template <typename T> static string toString(T data){
    stringstream ss;
    ss << data;
    return ss.str();
  }
};


