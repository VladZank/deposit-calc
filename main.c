#include <stdio.h>

int interest_income(int period, int amound)
{
	int iincome;
	if(amound<=100000)
	{
		if(period>30)
		{
			if(period>120)
			{
				if(period>240)
				{
					iincome=(amound/100)*12;
				}
				else
				{
					iincome=(amound/100)*6;
				}
			}
			else
			{
				iincome=(amound/100)*2;
			}
		}
		else
		{
			iincome=(amound/(-10));
		}
	}
	else
	{
		if(period>30)
		{
			if(period>120)
			{
				if(period>240)
				{
					iincome=(amound/100)*15;
				}
				else
				{
					iincome=(amound/100)*8;
				}
			}
			else
			{
				iincome=(amound/100)*3;
			}
		}
		else
		{
			iincome=(amound/(-10));
		}
	}
	return iincome;
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
			if(period<=365)
			{
				
			}
			else
			{
				printf("Error: Incorrect period.\n");
			}
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