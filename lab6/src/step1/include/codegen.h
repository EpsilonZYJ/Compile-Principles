#pragma once

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/FileSystem.h"
#if LLVM_VERSION_MAJOR >= 14
#include "llvm/TargetParser/Host.h"
#else
#include "llvm/Support/Host.h"
#endif
#include "llvm/Support/SourceMgr.h"
#if LLVM_VERSION_MAJOR >= 14
#include "llvm/MC/TargetRegistry.h"
#else
#include "llvm/Support/TargetRegistry.h"
#endif
#include "llvm/Support/TargetSelect.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetOptions.h"

namespace codegen {
using namespace llvm;
using namespace llvm::sys;

bool codeGenerate(const std::string &ir_filename,
                  const CodeGenFileType &gen_filetype);
std::string getGenFilename(const std::string &ir_filename,
                           const CodeGenFileType &gen_filetype);
} // namespace codegen
