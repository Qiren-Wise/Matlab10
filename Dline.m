clear;clc;close all;
x = linspace(1,200,100);%������������1-200������100��
y1 = log(x) + 1;%���ɺ���
y2 = log(x) + 2;
figure;
plot(x,y1);%z��ͼ
hold on %��ͼ������һ��������
plot(x,y2,'LineWidth',2);%�߿�
hold off %�رն�ͼ������һ������
legend('y1','y2');%����ͼ��y1,y2