%{
#include<stdio.h>
#include<string.h>

int chars = 0;
int words = 0;
int lines = 0;
%}

%%
[a-zA-Z]+  {
                if(strlen(yytext) >= 6)
                {
                    words++;
                    chars += strlen(yytext);
                }
           }

\n         { lines++; }

.          { }
%%

int main()
{
    yylex();
    printf("Number of lines = %d\n", lines);
    printf("Number of words (length >=6) = %d\n", words);
    printf("Number of characters (from those words) = %d\n", chars);
    return 0;
}