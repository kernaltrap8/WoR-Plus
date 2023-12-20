SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
mkdir $SCRIPT_DIR/../bin/linux/
gcc $SCRIPT_DIR/qbkey_minimal.c -o $SCRIPT_DIR/../bin/linux/qbkey