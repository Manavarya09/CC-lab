%{
#include <stdio.h>
%}
%%
[0-9]+ printf("Found number %s whose length is %d",yytext, yyleng) ;
[0-9]+ printf("Found number %d whose length is sd", atoi(yytext), yyleng);
%%
