%{
#include <stdio.h>
%}

%token OCTN

%%
start:
      start E '\n'  {printf("Result: %o\n",$2);}
      |
      ;

E:
      OCTN
      |
      E '+' E { $$=$1+$3; }
      |
      E '-' E { $$ = $1-$3;}
      ;
%%

void yyerror(char * s){
  fprintf(stderr, "%s", s);
}

int main(){
  printf("Input: ");
  yyparse();
  return 0;
}
