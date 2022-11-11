#include <stdio.h>

#define numsSize0 5

void moveZeroes(int *nums, int numsSize)
{
    for (int i = 0, j = 0; i < numsSize; i++)
    {
        if (*(nums + i))
        {
            *(nums + j) = *(nums + i);
            if (i != j)
            {
                *(nums + i) = 0;
            }
            j++;
        }
    }
}

int main(int argc, char *argv[])
{
    int nums0[5] = {1, 0, 0, 2, 5};

    printf("Before move zeroes\n");
    for (int i = 0; i < numsSize0; i++)
    {
        printf("%d ", nums0[i]);
    }
    printf("\n");
    moveZeroes(nums0, numsSize0);
    printf("After  move zeroes\n");
    for (int i = 0; i < numsSize0; i++)
    {
        printf("%d ", nums0[i]);
    }
    printf("\n");
    printf("\n");
    return 0;
}
