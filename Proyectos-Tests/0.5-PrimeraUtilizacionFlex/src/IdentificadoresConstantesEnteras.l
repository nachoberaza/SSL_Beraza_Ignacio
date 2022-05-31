%option noyywrap

%{

#include <stdio.h>

%}

%%

[1-9][0-9]* {printf("Constante entera decimal \n");}
0[0-7]* {printf("Constante entera octal \n");}
0[xX][0-9a-fA-F]+ {printf("Constante entera hexadecimal \n");}
[a-zA-Z_][a-zA-Z0-9_]* {printf("Identificador \n");}

%%