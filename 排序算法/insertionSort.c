#include "insertionSort.h"
void insertionSortInDescendingOrder(int array[], int length) {
	for (int i = 1; i < length; i++) {
		for (int j = i; j > 0; j--) {
			if (array[j] > array[j - 1]) {
				int num = array[j ];
				array[j ] = array[j-1];
				array[j-1] = num;
			}
			else break;
		}
	}
}




void insertionSortInAscendingOrder(int array[], int length) {
	for (int i = 1; i < length; i++) {
		for (int j = i; j>0; j--) {
			if (array[j] < array[j - 1]) {
				int num = array[j - 1];
				array[j - 1] = array[j];
				array[j] = num;
			}
			else break;
	}
	}
}

void insertionSort(int array[], int length, enum Orientation orientation) {
	if (orientation == Descending) {
		insertionSortInDescendingOrder(array, length);
	}
	else {
		insertionSortInAscendingOrder(array, length);
	}
}