#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool threeConsecutiveOdds(int *arr, int arrSize)
{
    int count = 0;
    if (arrSize < 3)
        return false;
    for (int i = 0; i < arrSize; i++)
    {
        if (*(arr + i) & 1)
        {
            if (++count == 3)
                return true;
        }
        else
        {
            count = 0;
        }
    }
    return false;
}

int main(int argc, char *argv[])
{
    int test1[4] = {2, 6, 4, 1};
    int test2[9] = {1, 2, 34, 3, 4, 5, 7, 23, 12};
    int test3[9] = {1, 3, 5, 7, 9, 11, 13, 15, 17};
    bool answer1 = threeConsecutiveOdds(test1, sizeof(test1) / sizeof(test1[0]));
    bool answer2 = threeConsecutiveOdds(test2, sizeof(test2) / sizeof(test2[0]));
    bool answer3 = threeConsecutiveOdds(test3, sizeof(test3) / sizeof(test3[0]));
    printf("The answer1 is %d\n", answer1);
    printf("The answer2 is %d\n", answer2);
    printf("The answer3 is %d\n", answer3);

    return 0;
}