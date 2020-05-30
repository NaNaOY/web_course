#pragma once
/*
 * 排序方法
 */
enum SortType {
    SortTypeStart,// 排序算法枚举开始标记，遍历排序算法时标记用，无实际算法

    BubbleSort,//冒泡排序
    InsertionSort,//插入排序
    SelectionSort,//选择排序
    QuickSort,//快速排序
    SortTypeEnd, // 排序算法枚举终止标记，遍历排序算法时标记用，无实际算法
};

char* sortTypeName(enum SortType sortType);
enum Orientation {
    Ascending,//升序
    Descending,//降序
};
/*
 * 随机生成数组
 * length: 数组长度
 */
void generateArray(int array[], int length);
/*
 * 打印数组
 */
void printArray(int array[], int length);
/*
 * 检查排序结果是否正确
 */
int checkArrayInOrder(int array[], int length, enum Orientation orientation);