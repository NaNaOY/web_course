#include <math.h>
#include <stdio.h>
int main() {
    double a, b, c;
    scanf("%lf%lf", &a, &b);
    c = sqrt(a * a + b * b);
    printf("%.2lf\n", c);
    return 0;
}
