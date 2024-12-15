%{
    /*#include "y.tab.h"*/
    #include<string.h>
    #include<stdio.h>

    #define KEY 1
%}
key "if"|"else"|"main"|"while"|"switch"|"for"|"auto"

%%

{key} {return KEY;}



%%

int main(){
    yylex();
    return 1;
}
