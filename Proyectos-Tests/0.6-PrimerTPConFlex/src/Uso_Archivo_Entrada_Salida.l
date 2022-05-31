%option noyywrap

%{
#include <stdio.h>
%}

%%

[1-9][0-9]* {printf("Encontre la constante entera decimal: %s \n",yytext);}
0[0-7]* {printf("Encontre la constante entera octal: %s \n",yytext);}
0[xX][0-9a-fA-F]+ {printf("Encontre la constante entera hexadecimal: %s \n",yytext);}
.* {printf("No reconocida: %s \n",yytext);}

%%



int main() {   
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");	
    yylex();
    return 0;
}