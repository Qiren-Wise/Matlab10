x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);%随机生成1*200，位于[0,1]的数字
sz = 25;%尺寸为25
c = linspace(1,10,length(x));
scatter(x,y,sz,c,'filled');