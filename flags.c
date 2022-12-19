#include <stdio.h>
#include <stdint.h>

void test(char a, char b) {
    int8_t c = 0;
    uint16_t f = 0;

    asm("addb %2, %0;"
        "addb %3, %0;"
        "pushfq;"
        "popq %%rax;"
        "mov %%ax, %1;"
        : "+r" (c), "=r" (f)
        : "r" (a), "r" (b)
        : "%rax"
    );
    
    printf("%hhu + %hhu = %hhu\n", a, b, c);
    printf("%hhd + %hhd = %hhd\n", a, b, c);
    printf("flags : %s %s %s %s\n",
        f & (1u << 0) ? "CF" : " ",
        f & (1u << 6) ? "ZF" : " ",
        f & (1u << 7) ? "SF" : " ",
        f & (1u << 11) ? "OF" : " "
        );
    printf("\n\n");
}

int main() {
    test(100, 52);
    test(52, -56);
    test(-56, -100);
    test(-128, -128);
}
