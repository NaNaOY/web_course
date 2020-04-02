//【问题描述】
//医务工作者经广泛的调查和统计分析，根据身高与体重因素给出了以下按“体指数”进行体型判断的方法：
//体指数 t = 体重 w / (身高 h)2     (w 单位为千克，h 单位为米)
//当 t < 18时，为低体重；
//    当 t 介于 18 和 25 之间时，为正常体重；
//    当 t 介于 25 和 27 之间时，为超重体重；
//    当 t >= 27时，为肥胖。
//    从键盘输入你的身高h和体重w，根据上述给定的公式计算体指数 t （保留两位小数），然后判断你的体指类型。
//    【输入形式]
//    "%f%f"从键盘输入两个实型数据，第一个表示身高，第二个表示体重，两个数之间用空格隔开。
//        【输出形式】
//        输出t的值，保留两位小数，根据t的值输出体指类型。
//        【样例输入】
//        1.80  65
//        【样例输出】
//        t = 20.06, Congratulations, fingers are normal!
//        【样例说明】
//        根据计算出来的t的值，输出t的具体值和体指类型：
//        低体重：Thin, You need more nutrition.
//        正常体重：Congratulations, fingers are normal!
//        超重体重： Overweight, You need to lose weight.
//        肥胖：Obesity, You have to lose weight.
#include<stdio.h>
int main() {
	float w,h,t;
	scanf("%f %f", &h, &w);
	t = w/( h * h);
	if (t < 18)
		printf("t=%.2f,Thin,You need more nutrition.", t);
	else if (t > 18 && t < 25)
		printf("t=%.2f,Congratulations,fingers are normal!", t);
	else if (t > 25 && t < 27)
		printf("t=%.2f,Overweight,You need to lose weight.", t);
	else
		printf("t=%.2f,Obesity,You have to lose weight.", t);
	return 0;

}