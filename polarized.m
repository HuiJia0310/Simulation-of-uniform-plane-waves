clear all
clc
Em = 0.1*55 + 5; 
Exm = 5;  % x������ֵ
Ezm = (Em^2 - Exm^2)^(0.5);  % y������ֵ
w = 10; % ��Ƶ��
k = w; % ��������
y = 0:0.01:3;  % ��y����в���
m0 = zeros(size(y)); % ��yȡ�����й�ģ��ͬ��0����
Qx = 0; %x���������
Qz = pi/2; %z��������� pi/2����Բ���� -pi/2����Բ����
figure
for t=0:500
    Ex = Exm*cos(w*t*1e-2-k*y+Qx);  % ���� x�����ֵ˲ʱ����
    Ez = Ezm*cos(w*t*1e-2-k*y+Qz);  % ���� z�����ֵ˲ʱ����
    plot3(m0,y,m0,'black','LineWidth',3); %���ο�����
    hold on
    plot3(Ex,y,m0,'m','LineWidth', 1.1); % ��x�᷽�����
    hold on
    plot3(m0,y,Ez ,'b','LineWidth', 1.5);% ��z�᷽�����
    hold on
    plot3(Ex, y, Ez,'g','LineWidth', 1.2); % ��Em��������
    hold off
    xlabel('�糡Ex');
    ylabel('��������');
    zlabel('�糡Ez');
    title('����Բ��������ƽ�沨����ʾ��ͼ','fontsize',14);
    set(gca,'fontsize',12);
    drawnow
end
axProjection3D('Y') 




