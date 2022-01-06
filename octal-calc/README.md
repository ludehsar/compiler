## To compile:

```
bison -d -v OC.y
flex OC.l
gcc lex.yy.c OC.tab.c
```