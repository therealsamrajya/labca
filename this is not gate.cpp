#include<stdio.h>
#include<conio.h>
#include<stdlib.h>


int notgt(int x)
{
	if(x == 1){
		return 0;
	}
	else
	return 1;
}



int main()

{
	int a,x;
	printf("enter a number");
	scanf("%d", &a);
	x =	notgt(a);
	
	printf("the not of the given number is %d",x);

}

