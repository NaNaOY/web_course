#include"bubbleSort.h"
void bubbleSortInDescendingOrder(int array[], int length) {
	int n, j,num1;
	for (n = 0; n < length - 1; ++n) {
		for (j = 0; j < length - 1 - n; ++j) {
			if (array[j] < array[j + 1]) {
				num1 = array[j];
				array[j] = array[j + 1];
				array[j + 1] = num1;
			}
		}
	}

}

void bubbleSortInAscendingOrder(int array[], int length) {
	int q, w, num2;
	for (q = 0; q < length - 1; ++q) {
		for (w = 0; w < length - 1 - q; ++w) {
			if (array[w] > array[w + 1]) {
				num2 = array[w];
				array[w] = array[w + 1];
				array[w + 1] = num2;
			}
		}
	}
}
void bubbleSort(int array[], int length, enum Orientation orientation) {
	if (orientation == Descending) {
		bubbleSortInDescendingOrder(array, length);
	}
	else {
		bubbleSortInAscendingOrder(array, length);
	}
}

