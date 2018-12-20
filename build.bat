echo off
pushd MathLibrary
rm -rf .vs
rm -rf x64
rm -rf MathLibrary/x64
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv" MathLibrary.sln /Clean
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv" MathLibrary.sln /build Debug /projectconfig Debug
popd

rm -rf .vs
rm -rf x64
rm -rf mainprogram/x64
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv" mainprogram.sln /Clean
cp MathLibrary\MathLibrary\MathLibrary.h .\mainprogram\
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv" mainprogram.sln /build Debug /projectconfig Debug
echo About to execute :
x64\Debug\mainprogram
