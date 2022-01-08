/bin/bash -l

shopt -s nullglob

codePath=$1
echo "${codePath}"
cppFiles=("$codePath"/*.cpp)
code="${cppFiles[0]}"
if [[ -f code ]]; then
    clang++12 -stdlib=libc++ -Wall -Wextra -std=c++17 "$code" -o submission
else
    echo "No code submitted."
fi
