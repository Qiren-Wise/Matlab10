clear;clc;close all;
x = linspace(1,200,100);%均匀生成数字1-200，共计100个
y1 = log(x) + 1;%生成函数
y2 = log(x) + 2;
figure;
plot(x,y1);%z作图
hold on %多图共存在一个窗口上
plot(x,y2,'LineWidth',2);%线宽
hold off %关闭多图共存在一个窗口
legend('y1','y2');%生成图例y1,y2
figure;
y3 = y1 + rand(1,100)-0.5;
plot(x,y1,'LineWidth',2,'Color',[0.21,0.21,0.67]);
hold on
%设置数据点的形状、数据的填充颜色、数据点的轮廓颜色
plot(x,y3,'o','LineWidth',2,'Color',[0.46,0.63,0.90],'MarkerFaceColor',[0.35,0.90,0.89],'MarkerEdgeColor',[0.18,0.61,0.17]);
hold off
