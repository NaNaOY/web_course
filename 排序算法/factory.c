#include"factory.h"
void sortArray(int array[], int length, enum SortType sortType, enum Orientation orientation)
{
	if (sortType == BubbleSort) {
		bubbleSort(array, length, orientation);
	}
}