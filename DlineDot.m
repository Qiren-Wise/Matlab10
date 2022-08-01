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
figure;
y3 = y1 + rand(1,100)-0.5;
plot(x,y1,'LineWidth',2,'Color',[0.21,0.21,0.67]);
hold on
%�������ݵ����״�����ݵ������ɫ�����ݵ��������ɫ
plot(x,y3,'o','LineWidth',2,'Color',[0.46,0.63,0.90],'MarkerFaceColor',[0.35,0.90,0.89],'MarkerEdgeColor',[0.18,0.61,0.17]);
hold off
