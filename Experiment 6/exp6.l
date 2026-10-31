%{
#include <stdio.h>
%}

%%
^.*COM$    { printf("Valid line: %s\n", yytext); }
.*         { printf("Invalid line: %s\n", yytext); }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
