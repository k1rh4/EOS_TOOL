# CMake generated Testfile for 
# Source directory: /home/k1rh4/GIT/eos/contracts/hello
# Build directory: /home/k1rh4/GIT/eos/build/contracts/hello
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_hello_abi "/home/k1rh4/GIT/eos/build/scripts/abi_is_json.py" "/home/k1rh4/GIT/eos/contracts/hello/hello.abi")
