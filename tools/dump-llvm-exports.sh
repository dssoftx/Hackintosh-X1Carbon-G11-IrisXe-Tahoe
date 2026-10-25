#!/bin/zsh
# Captures the exported symbols of this machine's GPUCompiler libLLVM, so the Metal shader compiler
# (macos/build-shader-compiler.sh) can be cross-built on a different Mac.
#
#   zsh dump-llvm-exports.sh [output file]
#
# Needs nothing but macOS: dyld_info is a system binary and reads the dyld shared cache, so the dylib
# does not have to exist on disk. No Xcode, no network, no sudo.
#
# Why: build-shader-compiler.sh generates a .tbd from the RUNNING system, because it assumes you build on
# the machine you will run on. The .tbd is only a list of symbol names, so capturing the list here and
# linking against it elsewhere gives an identical result.
set -e
LLVM=/System/Library/PrivateFrameworks/GPUCompiler.framework/Versions/32023/Libraries/libLLVM.dylib
OUT=${1:-${0:A:h}/libLLVM-exports.txt}

/usr/bin/dyld_info -exports $LLVM | awk '$1 ~ /^0x/ {print $2}' | sort > $OUT
N=$(wc -l < $OUT | tr -d ' ')
M=$(md5 -q $OUT 2>/dev/null || md5 < $OUT)

[[ $N -gt 1000 ]] || { print "only $N symbols captured - something is wrong, do not use this file"; exit 1; }

print
print "captured : $OUT"
print "build    : $(sw_vers -buildVersion)"
print "symbols  : $N"
print "md5      : $M"
print
print "Carry that file back and rebuild with:"
print "    XE_LLVM_EXPORTS=<file> zsh macos/build-all.sh <sle folder>"
print
