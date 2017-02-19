#include <stdio.h>

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
		printf("Error: Incorrect amount.\n");
	}
	return 0;
}