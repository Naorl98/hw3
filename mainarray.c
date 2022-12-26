#include <stdio.h>
#include <stdlib.h>
#include "hw3Array.h"
#define SIZE 50

int main(){
    int arr[SIZE] = {0};
    for (int i = 0; i < SIZE; i++)
    {
        printf("enter num:\n");
        scanf("%d",(arr+i));
    }
    for (int i = 0; i < SIZE; i++)
    {
        printf("%d,",*(arr+i));
    }
    printf("\n");
    insertion_sort(arr, SIZE);
    printf("The sorted array: \n");
    for (int i = 0; i < SIZE; i++)
    {
        printf("%d,",*(arr+i));
    }
    printf("\n");
    return 0;
}


