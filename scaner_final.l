%{

#include <stdio.h>
#include <stdlib.h>
#include "sintactico.tab.h"

#pragma warning(disable: 4996 6011 6385 4013 4244 4267)

#include <malloc.h> // para las definiciones de malloc, free que provocan warning
#include <stdlib.h> // para las definiciones de exit que provocan warning

%}

%%

		       
"a"		       {
				return *yytext;
		       }
		       
"b"		       {
				return *yytext;
		       }

"c"		       {
				return *yytext;
		       }

"f"		       {
				return *yytext;
		       }

.                   yyerror("Caracter invalido");

%%


int yywrap(void) 
{
    return 1;
}



