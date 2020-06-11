
#include<stdio.h>    
#include<math.h>  
int Judge(int a) {
    int j;
    for (j = 2; j <= sqrt(a); j++) {
        if (a % j == 0)
            return 0;  // 如果除一和本身外有约数，则不是素数  
    }
    return 1;
}
int main() {
    int m, half, i;
    while (scanf("%d", &m) != EOF) {
        half = m / 2;
        for (i = half; i > 0; i--) {
            int temp = half * 2 - i;
            if (Judge(i) && Judge(temp) && temp != i) {
                printf("%d %d\n", i, temp);
                break;
            }
        }
    }
    return 0;
}
