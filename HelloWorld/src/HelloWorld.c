#include <stdio.h>
#include "../include/HelloWorld.h"

int main() {

    printf("Hello, Jenkins webhooks!\n");
    printf("Let us do some addition...\n");

    int x = 10;
    int y = 2
    printf("Computing %d + %d...", x, y);
    int total = add(x, y);
    printf("The answer is: %d!!\n", total);

    int a = 11;
    int b = 6;
    printf("Computing %d x %d...", a, b);
    total = multiply(8,6);
    printf("The answer is: %d!!\n", total);
    return 0;
}