letter	[a-z]|[A-Z]
digit	[0-9]
digits	[0-9]+
%%
boolean							printf("boolean\n");
int							printf("int\n");
float							printf("float\n");
if							printf("if\n");
else							printf("else\n");
while							printf("while\n");

{letter}({letter}|{digit})*				printf("id\n");
{digit}+|{digit}+"."{digits}+("\n"|E{digits}+)		printf("num\n");
==|!=|>|>=|<|<=						printf("relop\n");
=							printf("assign\n");
"+"|-							printf("addop\n");
"*"|"/"							printf("mulop\n");
";"							printf(";\n");
","							printf(",\n");
"("							printf("(\n");
")"							printf(")\n");
"{"							printf("{\n");
"}"							printf("}\n");
"]"							printf("]\n");
%%

main()
{
 printf("Enter your input:\n");
 yylex();
}
