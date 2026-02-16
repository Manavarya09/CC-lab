%{
#include <stdio.h>
#include <stdlib.h>

int display(int);
%}

%%
[0-9]+    { display(atoi(yytext)); }
%%
int display(int a)
{
    printf("Found number %d whose Length is %d\n", a, yyleng);
    return 0;
}
