%{
#include <stdio.h>
#include <stdlib.h>

int display(int, int);
%}

%%
[0-9]+ { display(atoi(yytext), yyleng); }
%%

int main()
{
    yyin = fopen("input", "r");
    yylex();
    return 0;
}

int display(int a, int len)
{
    printf("Found number %d whose length is %d",atoi(yytext), yyleng);

}

