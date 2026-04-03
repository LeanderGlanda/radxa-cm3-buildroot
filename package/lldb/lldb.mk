LLDB_VERSION = 20.1.8  # Pick a release matching your LLVM version
LLDB_SITE = https://github.com/llvm/llvm-project/releases/download/llvmorg-$(LLDB_VERSION)
LLDB_SOURCE = llvm-project-$(LLDB_VERSION).src.tar.xz

LLDB_DEPENDENCIES = llvm host-python3

LLDB_PROJECT_CONF_OPTS = \
  -DLLVM_ENABLE_PROJECTS="clang;lldb" \
  -DLLDB_ENABLE_PYTHON=OFF \
  -DLLDB_ENABLE_CURSES=OFF \
  -DCMAKE_CROSSCOMPILING=ON

$(eval $(cmake-package))
