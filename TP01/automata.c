#ifdef _WIN32
#include <windows.h>
#include <tchar.h>
#define WIDTH 7
#endif

#ifdef linux
#include <stdlib.h>
#endif

#include <stdio.h>
#include <string.h>

int clearScreen();


int main(){
    clearScreen();

    FILE* ptr;
    char ch;
     
    // Abro el archivo de texto
    ptr = fopen("text.txt", "r");
 
    if (NULL == ptr) {
        printf("file can't be opened \n");
    }
 
    printf("content of this file are \n");
 
    // Muestro el contenido del archivo caracter por caracter
    while (ch != EOF){
        ch = fgetc(ptr);
        printf("%c", ch);
    };
 
    // Cierro el 
    fclose(ptr);

    return 0;
}


int clearScreen(){
    #ifdef _WIN32
        system("cls");
    #else
        system("clear");
    #endif
    return 0;
}

