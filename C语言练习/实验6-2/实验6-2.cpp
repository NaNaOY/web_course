#include<stdio.h>
int main() {
    int i, j;
    int temp = 0;
    int num = 0;
    int jm[40] = { 0 };
    i = 40;
    printf("Singer Received histogram\n");
    if (i >= 1 && i <= 40) {
        while (i--) {
            scanf("%d", &j);
            jm[j]++;
        }
        i = 10; j = 1;
        while (i--) {
            printf("%d\t%d", j, jm[j]);
            printf("\t");
            for (int k = 0; k < jm[j]; k++) {
                printf("*");
                if (temp < jm[j]) {
                    temp = jm[j];
                    num = j;
                }
            }
            printf("\n");
            j++;
        }
    }
    printf("The students' favorite singer is %d", num);
    return 0;
}
