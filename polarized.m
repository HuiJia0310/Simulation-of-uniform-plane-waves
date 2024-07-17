clear all
clc
Em = 0.1*55 + 5; 
Exm = 5;  % x分量幅值
Ezm = (Em^2 - Exm^2)^(0.5);  % y分量幅值
w = 10; % 角频率
k = w; % 传播常数
y = 0:0.01:3;  % 对y轴进行采样
m0 = zeros(size(y)); % 与y取样序列规模相同的0序列
Qx = 0; %x分量初相角
Qz = pi/2; %z分量初相角 pi/2左旋圆极化 -pi/2右旋圆极化
figure
for t=0:500
    Ex = Exm*cos(w*t*1e-2-k*y+Qx);  % 计算 x方向幅值瞬时序列
    Ez = Ezm*cos(w*t*1e-2-k*y+Qz);  % 计算 z方向幅值瞬时序列
    plot3(m0,y,m0,'black','LineWidth',3); %画参考轴线
    hold on
    plot3(Ex,y,m0,'m','LineWidth', 1.1); % 画x轴方向分量
    hold on
    plot3(m0,y,Ez ,'b','LineWidth', 1.5);% 画z轴方向分量
    hold on
    plot3(Ex, y, Ez,'g','LineWidth', 1.2); % 画Em传播曲线
    hold off
    xlabel('电场Ex');
    ylabel('传播方向');
    zlabel('电场Ez');
    title('左旋圆极化均匀平面波传播示意图','fontsize',14);
    set(gca,'fontsize',12);
    drawnow
end
axProjection3D('Y') 




