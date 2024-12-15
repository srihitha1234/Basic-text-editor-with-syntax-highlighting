%{
#include <stdio.h>
#include "tokens.h"
%}

%option noyywrap
%option header-file="lexer.h"

key "if"|"else"|"while"|"for"|"do"|"return"|"typedef"|"struct"|"switch"|"case"
type "int"|"char"|"void"|"float"|"double"|"const"|"enum"|"long"|"short"|"signed"
header "<"[^>]*"\.h>"
string \"[^\"]*\"
comments1 "//".*
comments2 "/*"[^"]*"*/""/*"[^"]*"*/"
preproc ^"#"[a-zA-Z]+
func [a-zA-Z_][a-zA-Z0-9_]*[ \t]*"("[^)]*")"
var [a-zA-Z_][a-zA-Z0-9_]*
num [0-9]+|[0-9]*\.[0-9]+
oper [+\-*/%=<>!&|^~]
special ["()"{}[\];,]

%%

{key}       { return KEYWORD; }
{type}      { return TYPE; }
{header}    { return HEADER; }
{string}    { return STRING; }
{comments1} { return COMMENT; }
{comments2} { return COMMENT; }
{preproc}   { return PREPROC; }
{func}      { return FUNCTION; }
{var}       { return VARIABLE; }
{num}       { return NUMBER; }
{oper}      { return OPERATOR; }
{special}   { return SPECIAL; }
.           { return *yytext; }

%%
