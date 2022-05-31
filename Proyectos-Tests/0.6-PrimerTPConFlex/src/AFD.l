%option noyywrap

%{
#include <stdio.h>
#include <string.h>
%}

%%
[1-9][0-9]* {fprintf(yyout, "%s", yytext,"- DECIMAL");}
0[0-7]* {;}
0[xX][0-9a-fA-F]+ {;}
.* {;}
%%

void writeFile (FILE *file, char *line) {fprintf(file, "%s", line);}
/* 
char *appendWordType(char* word, char* finalType) {
  int lengthType = (int)strlen(finalType);
  int size = (int)strlen(word);

  word = reallocPointer(word, size + lengthType + 2);
  word[size - 1] = '-';
  for(int i = 0; i < lengthType ; i++){
    word[size] = finalType[i];
    size++;
  }
  word[size] = '\n';
  word[size + 1] = '\0';

  return word;
} */


int main(){
    yyin=fopen("input.txt","r");
    yyout=fopen("output.txt","w");
    yylex();
    return 0;
};