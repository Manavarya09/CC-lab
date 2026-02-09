%{
#include <stdio.h>
%}
%%
^stop printf("found stop at the beginning of the line\n");
stop$ printf("found stop at the end of the line\n");
.|\n ;
%%
