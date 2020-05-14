#include "factory.h"
#include "bubbleSort.h"
#include "insertionSort.h"
void sortArray(int array[], int length, enum SortType sortType, enum Orientation orientation)
{
	if (sortType == BubbleSort) {
		bubbleSort(array, length, orientation);
	}
	if (sortType == InsertionSort) {
		insertionSort(array, length, orientation);
	}
}