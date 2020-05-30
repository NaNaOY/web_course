#include <time.h>

#include"common.h"
char* sortTypeName(enum SortType sortType) {
	switch (sortType)
	{
	case SortTypeStart:
		break;
	case BubbleSort:
		return "bubble sort";
	case InsertionSort:
		return "insertion sort";
	case SelectionSort:
		return "selection sort";
	case QuickSort:
		return "quick sort";
	case SortTypeEnd:
		break;
	default:
		break;
	}
	return "unsupport sort type";
}
void generateArray(int array[], int length) {
	srand((unsigned)time(NULL));

	for (int i = 0; i < length; i++) {
		array[i] = rand() % 1000; //生成1000以内随机数
	}
}
void printArray(int array[], int length) {
	for (int i = 0; i < length; i++) {
		printf("%d ", array[i]);
	}
	printf("\n");
}

int checkArrayInOrder(int array[], int length, enum Orientation orientation)
{
	if (orientation == Descending) {
		return checkArrayInDescendingOrder(array, length);
	}
	else {
		return checkArrayInAscendingOrder(array, length);
	}
}

int checkArrayInDescendingOrder(int array[], int length) {
	for (int i = 0; i < length - 1; i++) {
		if (array[i] < array[i + 1]) {
			//降序排列的数组，前面的元素应不小于后面的元素，出现反例，排序出错
			printf("sort error!\n");
			return -1;
		}
	}
	printf("sort correct!\n");
	return 0;
}
int checkArrayInAscendingOrder(int array[], int length) {
	for (int i = 0; i < length - 1; i++) {
		if (array[i] > array[i + 1]) {
			//升序排列的数组，前面的元素应不大于后面的元素，出现反例，排序出错
			printf("sort error!\n");
			return -1;
		}
	}
	printf("sort correct!\n");
	return 0;
}