%{
#include "y.tab.h"
#include <stdlib.h>
%}

%%

"for"       { return FOR; }

"("         { return LPAREN; }
")"         { return RPAREN; }
";"         { return SEMICOLON; }

"="         { return ASSIGN; }

"<"         { return LT; }
">"         { return GT; }

"++"        { return INC; }
"--"        { return DEC; }

[0-9]+      { yylval = atoi(yytext); return NUMBER; }

[a-zA-Z][a-zA-Z0-9]* {
                return ID;
            }

[ \t\n]+    ;

.           { return yytext[0]; }

%%

int yywrap()
{
    return 1;
}
