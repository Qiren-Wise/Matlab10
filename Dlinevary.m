x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);%�������1*200��λ��[0,1]������
sz = 25;%�ߴ�Ϊ25
c = linspace(1,10,length(x));
scatter(x,y,sz,c,'filled');