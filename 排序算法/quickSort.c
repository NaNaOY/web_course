#include "quickSort.h"
void quickSortInDescendingOrder(int array[], int length) {
	int low = 0;
	int high = length - 1;
	Quicksort(array, low, high, Descending);

}
int Partition(int array[], int low, int high,enum Orientation orientation) {
	int pivot = array[low];	
	while (low < high) {
		if (orientation == Ascending) {
			while (low < high && array[high] >= pivot) {
				--high;
			}
			array[low] = array[high];
			while (low < high && array[low] <= pivot) {
				++low;
			}
			array[high] = array[low];
		}
		else if (orientation == Descending) {
			while (low < high && array[high] <= pivot) {
				--high;
			}
			array[low] = array[high];
			while (low < high && array[low] >= pivot) {
				++low;
			}
			array[high] = array[low];
		}
		
	}
	array[low] = pivot;
	return low;
}
void Quicksort(int array[], int low, int high, enum Orientation orientation) {
	if (low < high) {
		int pivot = Partition(array, low, high, orientation);
		Quicksort(array, low, pivot - 1, orientation);
		Quicksort(array, pivot + 1, high, orientation);
	}

}


void quickSortInAscendingOrder(int array[], int length) {
	int low = 0;
	int high = length - 1;
	Quicksort(array, low, high, Ascending);


}


void quickSort(int array[], int length, enum Orientation orientation) {
	if (orientation == Descending) {
		quickSortInDescendingOrder(array, length);
	}
	else {
		quickSortInAscendingOrder(array, length);
	}
}