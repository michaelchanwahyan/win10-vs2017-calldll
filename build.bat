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
rm -f .\mainprogram\MathLibrary.*
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv" mainprogram.sln /Clean
cp MathLibrary\MathLibrary\MathLibrary.h .\mainprogram\
cp MathLibrary\x64\Debug\MathLibrary.lib .\mainprogram\
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv" mainprogram.sln /build Debug /projectconfig Debug
echo About to execute :
cp MathLibrary\x64\Debug\MathLibrary.dll .\x64\Debug\
x64\Debug\mainprogram
