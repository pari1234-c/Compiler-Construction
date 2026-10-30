%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s);
%}

%token FOR
%token LPAREN RPAREN SEMICOLON
%token ASSIGN LT GT
%token INC DEC
%token ID NUMBER

%%

program:
        for_statement
        {
            printf("Valid FOR loop statement\n");
        }
        ;

for_statement:
        FOR LPAREN initialization SEMICOLON condition SEMICOLON increment RPAREN
        ;

initialization:
        ID ASSIGN NUMBER
        ;

condition:
        ID LT NUMBER
        | ID GT NUMBER
        | ID LT ID
        | ID GT ID
        ;

increment:
        ID INC
        | ID DEC
        ;

%%

void yyerror(const char *s)
{
    printf("Invalid FOR loop statement\n");
}

int main()
{
    printf("Enter a for loop:\n");
    yyparse();
    return 0;
}
