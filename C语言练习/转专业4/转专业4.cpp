#include <stdio.h>
#include <stdlib.h>
int main()
{
    int N, i, j, n, num = 1;
    int a[10][10] = { 0 };
    printf("Please input N [1-15]:\n");
    scanf("%d", &N);
    printf("Output:\n");
        for (n = 0; n <= N / 2; n++)
        {
            for (j = n; j <= N - n - 1; j++)
                a[n][j] = num++;

            for (i = n + 1; i < N - n - 1; i++)
                a[i][N - n - 1] = num++;

            for (j = N - n - 1; j > n; j--)
                a[N - n - 1][j] = num++;

            for (i = N - n - 1; i > n; i--)
                a[i][n] = num++;
        }
    //输出螺旋矩阵 
    for (i = 0; i < N; i++)
    {
        for (j = 0; j < N; j++)
            printf("%5d ", a[i][j]);
        printf("\n");
    }
    return 0;
}