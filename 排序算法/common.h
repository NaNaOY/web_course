#pragma once
/*
 * ���򷽷�
 */
enum SortType {
    SortTypeStart,// �����㷨ö�ٿ�ʼ��ǣ����������㷨ʱ����ã���ʵ���㷨

    BubbleSort,//ð������
    InsertionSort,//��������
    SelectionSort,//ѡ������
    QuickSort,//��������
    SortTypeEnd, // �����㷨ö����ֹ��ǣ����������㷨ʱ����ã���ʵ���㷨
};

char* sortTypeName(enum SortType sortType);
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