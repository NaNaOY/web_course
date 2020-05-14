
#include <stdio.h>
#include "factory.h"
#define N 10

int main()
{
	int array[N];

	for (enum SortType sortType = SortTypeStart + 1; sortType < SortTypeEnd; sortType++) {
		printf("test %s:\n", sortTypeName(sortType));
		//随机生成数组
		generateArray(array, N);

		printf("before %s:\n", sortTypeName(sortType));
		printArray(array, N);
		//冒泡降序排序
		sortArray(array, N, sortType, Descending);
		//验证排序结果
		printf("after %s in descending order:\n", sortTypeName(sortType));
		printArray(array, N);
		checkArrayInOrder(array, N, Descending);

		//冒泡升序排序
		sortArray(array, N, sortType, Ascending);
		//验证排序结果
		printf("after %s in ascending order:\n", sortTypeName(sortType));
		printArray(array, N);
		checkArrayInOrder(array, N, Ascending);
		printf("\n");
	}

	return 0;
}
