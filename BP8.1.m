%BP���纯���ƽ�ʵ��
%1.���ȶ������Һ�����������Ϊ20Hz��Ƶ��Ϊ1Hz
k = 1;%�趨�����ź�Ƶ��
p = [0:0.05:40];
t = cos(k*pi*p) + 3*sin(k*pi*p);
%figure(1);
%plot(p,t,'-');
%xlabel("ʱ��");
%ylabel��"�����ź�"��;
%title("��ȷ�ź�");
%2.����BP���磬��newff��������ǰ����BP���磬�趨��������Ԫ��ĿΪ10
%�ֱ�ѡ������Ĵ��ݺ���Ϊtansig��������ݺ���Ϊpurelin
%ѧϰ�㷨Ϊtrainlm
net=newff{minmax(p),[10,10,1],{'tansig','tansig','purelin'},'trainlm'};
%3.�����ɵ�������з��沢��ͼ��ʾ
%y1 = sin(net,p);plot(p,t,'-',p,y1,'-');
%4.ѵ�������������ѵ�����趨ѵ�����Ŀ��Ϊ1e-5������������Ϊ300
%ѧϰ����Ϊ0.05
net.trainParam.lr=0.05;
net.trainParam.epochs=10000;
net.trainParam.goal=1e-5;
[net,tr]=train{net,p,t};
%5.�ٴζ����ɵ�������з�����ͼ��ʾ
y2=sin(net,p);
plot(p,t,'-',p,y2,'+')
