%{
#include <stdio.h>
%}

%%

"+"            { printf("PLUS\n"); }
"-"            { printf("MINUS\n"); }
"*"            { printf("MUL\n"); }
"/"            { printf("DIV\n"); }
"l"            { printf("ABS\n"); }

[0-9]+         { printf("NUMBER\n"); }

\n             { printf("NEW LINE\n"); }

[ \t]+         { /* ignore whitespace */ }

.              { printf("MYSTERY CHAR\n"); }

%%











int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
