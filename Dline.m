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