%{
#include<math.h>
#include<stdlib.h>
#include "OC.tab.h"
int toDec(int oct);
%}

OCTAL [0-7]+

%%

{OCTAL} {
          yylval = toDec(atoi(yytext));
          return OCTN;
        }

[-+\n] return *yytext;
[ \t] ;
. yyerror("Unrecognized!");

%%

int yywrap(){
  return 1;
}

int toDec(int oct){
  int dec = 0, r, i=0;

  while(oct!=0){
    r = oct % 10;
    oct /= 10;
    dec += r * pow(8, i);
    i++;
  }
  return dec;
}
