#include <stdio.h>

int interest_income(int period, int amound)
{
	
}

int main()
{
	int period, amount;
	printf("Input period and amount:");
	scanf("%d %d", &period, &amount);
	if(amount>=10000)
	{
		if(period>=0)
		{
			
		}
		else
		{
			printf("Error: Incorrect period.\n");
		}
	}
	else
	{
		printf("Error: Incorrect amount");
		if(period>=0)
		{
			printf(".\n");
		}
		else
		{
			printf(" and period.\n");
		}
	}
	return 0;
}