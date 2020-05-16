#include <stdio.h>
int main()
{
    int row, i,  t;
    int rowInc = 2;
    int col = 1;
    int colInc = 0;
    scanf("%d", &row);
    for (i = 1; i <= row; i++)
    {
        printf("%3d ", col + colInc);
        col = col + colInc;
        colInc++;
        t = i + 1;
        rowInc = col;
        while (t <= row)
        {
            printf("%3d ", rowInc + t);
            rowInc = rowInc + t;
            t++;
        }
        printf("\n");
    }
    return 0;
}