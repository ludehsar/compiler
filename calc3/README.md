## To compile:

```
yacc -d calc.y
lex calc.l
gcc lex.yy.c y.tab.c -o calc
```

## Then run:

```
./calc
```
