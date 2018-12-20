echo off
rm -rf .vs
rm -rf x64
rm -rf mainprogram/x64
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv" mainprogram.sln /build Debug /projectconfig Debug
