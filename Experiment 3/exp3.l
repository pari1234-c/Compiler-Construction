%{
#include <stdio.h>
int count = 0;
%}

%%
(^|[ \t\n])[Aa][A-Za-z0-9_]*    { count++; }
[ \t\n]+                         ;
.                                ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter your statement:\n");
    yylex();
    printf("Number of words starting with 'A': %d\n", count);
    return 0;
}
