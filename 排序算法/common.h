#pragma once
/*
 * ���򷽷�
 */
enum SortType {
    BubbleSort,//ð������
};
enum Orientation {
    Ascending,//����
    Descending,//����
};
/*
 * �����������
 * length: ���鳤��
 */
void generateArray(int array[], int length);
/*
 * ��ӡ����
 */
void printArray(int array[], int length);
/*
 * ����������Ƿ���ȷ
 */
int checkArrayInOrder(int array[], int length, enum Orientation orientation);