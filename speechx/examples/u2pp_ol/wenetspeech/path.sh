# This contains the locations of binarys build required for running the examples.

unset GREP_OPTIONS

SPEECHX_ROOT=$PWD/../../../
SPEECHX_BUILD=$SPEECHX_ROOT/build/speechx

SPEECHX_TOOLS=$SPEECHX_ROOT/tools
TOOLS_BIN=$SPEECHX_TOOLS/valgrind/install/bin

[ -d $SPEECHX_BUILD ] || { echo "Error: 'build/speechx' directory not found. please ensure that the project build successfully"; }

export LC_AL=C

export PATH=$PATH:$TOOLS_BIN:$SPEECHX_BUILD/nnet:$SPEECHX_BUILD/decoder:$SPEECHX_BUILD/frontend/audio:$SPEECHX_BUILD/recognizer

PADDLE_LIB_PATH=$(python -c "import paddle ; print(':'.join(paddle.sysconfig.get_lib()), end='')")
export LD_LIBRARY_PATH=$PADDLE_LIB_PATH:$LD_LIBRARY_PATH
