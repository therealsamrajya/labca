#include<stdio.h>
#include<conio.h>
 int main()
{
	int n,i,x;
	printf("enter number to be converted ");
	scanf("%d",&n);
	printf("the binary equvalent of given number is:\n ");
	for(i=7;i>=0;i--)
	{
		x=n&(1<<i);
		if(x==0)
		printf("0");
		else
		printf("1");
	}
	n=~n;	
	printf("\n The 1's complement of the number :\n ");
    for(i=7;i>=0;i--)
   {
    x=n&(1<<i);
    if(x==0)
    printf("0");
    else
    printf("1");
 }
	n=n+1;
	printf("\n The 2's complement of the  number is:\n ");
	for(i=7;i>=0;i--)
	{
		x=n&(1<<i);
		if(x==0)
		printf("0");
		else
		printf("1");
	}
	return 0;
}
