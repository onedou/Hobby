//hiding.c -- 块中的变量
#include <stdio.h>

int main(int argc, char const *argv[])
{
	int x = 30;

	printf("x in outer block: %d at %p\n", x, &x);

	{
		int x = 77;
		printf("x in innter block: %d at %p\n", x, &x);
	}

	while(x++ < 33)
	{
		int x = 100;
		x++;
		printf("x in while loop: %d at %p\n", x, &x);
	}

	printf("x in outer block: %d at %p\n", x, &x);

	return 0;
}