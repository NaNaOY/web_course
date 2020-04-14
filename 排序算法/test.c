
#include <stdio.h>
#include "factory.h"
#define N 10

int main()
{
	int array[N];
	//随机生成数组
	generateArray(array, N);

	printf("before bubble sort:\n");
	printArray(array, N);
	//冒泡降序排序
	sortArray(array, N, BubbleSort, Descending);
	//验证排序结果
	printf("after bubble sort in descending order:\n");
	printArray(array, N);
	checkArrayInOrder(array, N, Descending);

	//冒泡升序排序
	sortArray(array, N, BubbleSort, Ascending);
	//验证排序结果
	printf("after bubble sort in ascending order:\n");
	printArray(array, N);
	checkArrayInOrder(array, N, Ascending);
	return 0;
}
