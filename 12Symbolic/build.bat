set p=..\packages\FsLexYacc\build
set s=SymbolicDifferentiation

cd %s%
%p%\fsyacc ExprParser.fsy --module Symbolic.Expressions.ExprParser
%p%\fslex ExprLexer.fsl --unicode
cd ..

msbuild %s%\%s%.sln /m
