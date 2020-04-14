#pragma once
/*
 * 排序方法
 */
enum SortType {
    BubbleSort,//冒泡排序
};
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