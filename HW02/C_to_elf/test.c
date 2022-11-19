#include <stdio.h>

void foo(int a)
{
	int i = a;
	//printf("%p\n", &i);
}

int main(int argc, char *argv[])
{
	int a = 10;
	int * ptr = &a;
	printf("%d, %p\n", a, ptr);
    return 0;
}
