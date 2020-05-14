#include "insertionSort.h"
void insertionSortInDescendingOrder(int array[], int length) {

}

void insertionSortInAscendingOrder(int array[], int length) {

}
void insertionSort(int array[], int length, enum Orientation orientation) {
	if (orientation == Descending) {
		insertionSortInDescendingOrder(array, length);
	}
	else {
		insertionSortInAscendingOrder(array, length);
	}
}