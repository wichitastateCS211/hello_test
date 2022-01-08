/bin/bash -l

shopt -s nullglob

cppFiles=(*.cpp)
code="${cppFiles[0]}"
if [ -e code ] then;
    clang++12 -stdlib=libc++ -Wall -Wextra -std=c++17 "$code" -o submission
else
    echo "No code submitted."
fi
