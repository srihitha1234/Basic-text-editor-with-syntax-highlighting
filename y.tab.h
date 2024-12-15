/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    IDENTIFIER = 258,              /* IDENTIFIER  */
    STRING_LITERAL = 259,          /* STRING_LITERAL  */
    HEADER_NAME = 260,             /* HEADER_NAME  */
    NUM = 261,                     /* NUM  */
    IF = 262,                      /* IF  */
    ELSE = 263,                    /* ELSE  */
    WHILE = 264,                   /* WHILE  */
    FOR = 265,                     /* FOR  */
    RETURN = 266,                  /* RETURN  */
    INT = 267,                     /* INT  */
    CHAR = 268,                    /* CHAR  */
    VOID = 269,                    /* VOID  */
    FLOAT = 270,                   /* FLOAT  */
    DOUBLE = 271,                  /* DOUBLE  */
    PLUS = 272,                    /* PLUS  */
    MINUS = 273,                   /* MINUS  */
    MULTIPLY = 274,                /* MULTIPLY  */
    DIVIDE = 275,                  /* DIVIDE  */
    ASSIGN = 276,                  /* ASSIGN  */
    SEMICOLON = 277,               /* SEMICOLON  */
    COMMA = 278,                   /* COMMA  */
    LPAREN = 279,                  /* LPAREN  */
    RPAREN = 280,                  /* RPAREN  */
    LBRACE = 281,                  /* LBRACE  */
    RBRACE = 282,                  /* RBRACE  */
    PREPROCESSOR = 283,            /* PREPROCESSOR  */
    LOWER_THAN_ELSE = 284          /* LOWER_THAN_ELSE  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define IDENTIFIER 258
#define STRING_LITERAL 259
#define HEADER_NAME 260
#define NUM 261
#define IF 262
#define ELSE 263
#define WHILE 264
#define FOR 265
#define RETURN 266
#define INT 267
#define CHAR 268
#define VOID 269
#define FLOAT 270
#define DOUBLE 271
#define PLUS 272
#define MINUS 273
#define MULTIPLY 274
#define DIVIDE 275
#define ASSIGN 276
#define SEMICOLON 277
#define COMMA 278
#define LPAREN 279
#define RPAREN 280
#define LBRACE 281
#define RBRACE 282
#define PREPROCESSOR 283
#define LOWER_THAN_ELSE 284

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 17 "syntax.y"

    char *string;
    int num;

#line 130 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
