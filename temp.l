%{
/* C code section */
#include <stdio.h>
%}

/* Definitions section */
string   \"([^\"\\\\]|\\\\.)*\" 
charlit  \'([^\'\\\\]|\\\\.)\'

%%

{string}   { printf("String literal: %s\n", yytext); }
{charlit}  { printf("Character literal: %s\n", yytext); }
.          { /* Catch-all rule */ }

%%

int main() {
    yylex();
    return 0;
}
