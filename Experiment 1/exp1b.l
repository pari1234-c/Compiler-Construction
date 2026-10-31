%{
#include<stdio.h>
int count = 0;
%}

%%
pen { count++;}
.|\n {}
%%

int main() {
	printf("Enter a Paragraph: ");
	yylex();
	printf("The Frequency of word pen is : %d", count);
	return 0;
}

int yywrap() {
	 return 1;
}
