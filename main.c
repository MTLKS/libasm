#include <stdio.h>
#include <stdlib.h>
#include "libasm.h"

void test_ft_strlen() {
    printf("ft_strlen\n");
    printf("strlen: %li\n", ft_strlen("Hello World!"));
    printf("\n");
}

void test_ft_strcpy() {
    char *src = "Hello World!";
    char *dst = malloc(ft_strlen(src) + 1);
    char *ret = ft_strcpy(dst, src);

    printf("ft_strcpy\n");
    printf("src string: %s\n", src);
    printf("ret string: %s\n", ret);
    printf("dst string: %s\n", dst);
    printf("src pointer: %p\n", src);
    printf("ret pointer: %p\n", ret);
    printf("dst pointer: %p\n", dst);
    printf("\n");
}

int main() {
    test_ft_strlen();
    test_ft_strcpy();
    return 0;
}

