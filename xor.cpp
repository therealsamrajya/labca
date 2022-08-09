#include<stdio.h>
#include<conio.h>
char x,y;
 char AND(char x,char y)
 {

     if(x=='1' && y=='1')
     
	 
        return '1';
    
     else
     
        return '0';
 }
 char OR(char x,char y)
 {
 	if(x=='1' || y=='1' )
 	return '1';
 	else 
 	return '0';
 	
 }
 char NOT(char x)
 {
 	if(x=1)
 	return '0';
 	else
 	return '1';
	 }
	 char XOR(char x,char y)
	 {
	 	return OR(AND(NOT(x),y),AND(x,NOT(y)));
	 }
 

int main()
{
    char a,b;
    printf("enter  number A an B: ");
    scanf("%c %c", &a,&b);
    AND(a,b);
    OR(a,b);
    NOT(a);
    XOR(a,b);
    printf("the value of a and b=%c\n",AND(a,b));
    printf("the value of a or b=%c\n",OR(a,b));
    printf("the value of a not=%c\n",NOT(a));
    printf("the value of a x or b=%c\n",XOR(a,b));
    return 0;
}

