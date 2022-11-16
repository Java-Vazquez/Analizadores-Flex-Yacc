%{

    #pragma warning(disable: 4996 6011 6385 4013)
    #include <stdio.h>
    #include <string.h>
    #include <stdlib.h>
    #include <stdbool.h>
    #include <ctype.h>
    #include <wchar.h>
    #include <locale.h>
    #include <malloc.h>

%}
%option outfile="lexicografico.c"
%option noyywrap
%%
"a"		       {
				printf("Se encontro el caracter: %s\n", yytext);
		       }
		       
"b"		       {
				printf("Se encontro el caracter: %s\n", yytext);
		       }

"c"		       {
				printf("Se encontro el caracter: %s\n", yytext);
		       }

"f"		       {
				printf("Se encontro el caracter: %s\n", yytext);
		       }

.		       {
				printf("Se encontro un caracter invalido: %s\n", yytext);
		       }

%%

int main(int argc, char * argv[])
{
    	++argv;
    	--argc;  
    	if (argc > 0)
            yyin = fopen( argv[0], "r" );
    	else
            yyin = stdin;
    
    	yylex();
       	return(0);
}

