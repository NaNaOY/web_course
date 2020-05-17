#include "selectionSort.h"
void selectionSortInDescendingOrder(int array[], int length) {
	
	for (int i = 0; i < length; i++) {
		int maxIndex = i;
		for (int j = i + 1; j < length; j++) {
			if (array[j] > array[maxIndex]) {
				maxIndex = j;
			}
		}
		int temp = array[i];
		array[i] = array[maxIndex];
		array[maxIndex] = temp;
	}
}




void selectionSortInAscendingOrder(int array[], int length) {
	for (int i = 0; i < length - 1; i++) {
		int minIndex=i;
		for (int j = i+1; j < length; j++) {
			if (array[j] < array[minIndex]) {
				minIndex = j;
			}
		}
		int temp = array[i];
		array[i] = array[minIndex];
		array[minIndex] = temp;
	}
}

void selectionSort(int array[], int length, enum Orientation orientation) {
	if (orientation == Descending) {
		selectionSortInDescendingOrder(array, length);
	}
	else {
		selectionSortInAscendingOrder(array, length);
	}
}