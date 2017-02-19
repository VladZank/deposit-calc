#include <stdio.h>

int main()
{
	int date, amount;
	printf("Input date and amount:");
	scanf("%d %d", &date, &amount);
	if(amount>=10000)
	{
		if(date>0)
		{
			
		}
		else
		{
			printf("Error: Incorrect date.\n");
		}
	}
	else
	{
		printf("Error: Incorrect amount.\n");
	}
	return 0;
}