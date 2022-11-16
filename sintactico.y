%{

#include <stdio.h>
#pragma warning(disable: 4996 4013 4244 4267)

extern FILE * yyin;
extern FILE * yyout;

%}

%%

S :
	        'a'A B C 
	          ;

A :
	   'a''b' C
	  | 
	  ;
	  
B : 
		  'b' 
		 |'f'
		 ;

C : 
		  'c' 
		 | 
		 ;
		
%%

int yyerror(char *s) 
{
   printf("Error %s\n", s);
   exit(1); 
   return 0;
}

int main(int argc, char * argv[])
{
   ++argv;
   --argc;  
   //if (argc > 0)
       //yyin = fopen( argv[0], "r" );
   //else
       //yyin = stdin;
  
   yyparse();
   printf("Linea reconocida correctamente\n");
   return 0;
}
