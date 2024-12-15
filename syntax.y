%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void yyerror(const char *s);
int yylex(void);

// Symbol table structure
struct symbol {
    char *name;
    char *type;
};

%}

%union {
    char *string;
    int num;
}

/* Token definitions */
%token <string> IDENTIFIER STRING_LITERAL HEADER_NAME
%token <num> NUM
%token IF ELSE WHILE FOR RETURN
%token INT CHAR VOID FLOAT DOUBLE
%token PLUS MINUS MULTIPLY DIVIDE ASSIGN
%token SEMICOLON COMMA
%token LPAREN RPAREN LBRACE RBRACE
%token PREPROCESSOR

/* Define operator precedence and associativity */
%right ASSIGN
%left PLUS MINUS
%left MULTIPLY DIVIDE
%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE

%%

program
    : translation_unit
    ;

translation_unit
    : external_declaration
    | translation_unit external_declaration
    ;

external_declaration
    : function_definition
    | declaration
    | preprocessor_directive
    ;

declaration
    : type_specifier init_declarator_list SEMICOLON
    ;

init_declarator_list
    : init_declarator
    | init_declarator_list COMMA init_declarator
    ;

init_declarator
    : IDENTIFIER
    | IDENTIFIER ASSIGN assignment_expression
    ;

preprocessor_directive
    : PREPROCESSOR
    ;

function_definition
    : type_specifier IDENTIFIER LPAREN parameter_list RPAREN compound_statement
    | type_specifier IDENTIFIER LPAREN RPAREN compound_statement
    ;

parameter_list
    : parameter_declaration
    | parameter_list COMMA parameter_declaration
    ;

parameter_declaration
    : type_specifier IDENTIFIER
    ;

compound_statement
    : LBRACE statement_list RBRACE
    | LBRACE RBRACE
    ;

statement_list
    : statement
    | statement_list statement
    ;

statement
    : expression_statement
    | compound_statement
    | selection_statement
    | iteration_statement
    | return_statement
    | declaration
    ;

expression_statement
    : expression SEMICOLON
    | SEMICOLON
    ;

selection_statement
    : IF LPAREN expression RPAREN statement %prec LOWER_THAN_ELSE
    | IF LPAREN expression RPAREN statement ELSE statement
    ;

iteration_statement
    : WHILE LPAREN expression RPAREN statement
    | FOR LPAREN expression_opt SEMICOLON expression_opt SEMICOLON expression_opt RPAREN statement
    ;

expression_opt
    : /* empty */
    | expression
    ;

return_statement
    : RETURN expression SEMICOLON
    | RETURN SEMICOLON
    ;

expression
    : assignment_expression
    | expression COMMA assignment_expression
    ;

assignment_expression
    : additive_expression
    | IDENTIFIER ASSIGN assignment_expression
    ;

additive_expression
    : multiplicative_expression
    | additive_expression PLUS multiplicative_expression
    | additive_expression MINUS multiplicative_expression
    ;

multiplicative_expression
    : primary_expression
    | multiplicative_expression MULTIPLY primary_expression
    | multiplicative_expression DIVIDE primary_expression
    ;

primary_expression
    : IDENTIFIER
    | NUM
    | STRING_LITERAL
    | LPAREN expression RPAREN
    ;

type_specifier
    : INT
    | CHAR
    | VOID
    | FLOAT 
    | DOUBLE
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Parser error: %s\n", s);
}

int main() {
    yyparse();
    return 0;
}