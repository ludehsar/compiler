%{
int w = 0;
int n=0, v=0, c=0;
%}

VOWEL [AEIOUaeiou]
CONSONANT [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]
NUMBER [0-9]+

%%

{NUMBER}  {
            printf("\nFound Number: %s",yytext);
            n++;
          }

{VOWEL}+  {
            printf("\nFound Vowel: %s",yytext);
            v++;
          }

{CONSONANT}+   {
            printf("\nFound Consonant: %s",yytext);
            c++;
          }

. {continue;}

\n {return 0;}

%%
yywrap(){}

int main(){
  printf("Input: ");
  yylex();
  printf("\nTotal Number found: %d\nTotal Vowel found: %d\nTotal Consonant found: %d\n",n,v,c);

  return 0;
}
