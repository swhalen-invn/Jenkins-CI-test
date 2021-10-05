#include <stdio.h>
#include "../include/HelloWorld.h"

int main() {

    printf("Hello, Jenkins webhooks!\n");
    printf("Let us do some addition...\n");

    printf("Computing 11 + 5...");
    int total = add(11,5);
    printf("The answer is: %d!\n", total);
    return 0;
}