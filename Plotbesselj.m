function Plotbesselj()

% Generate some data using the besselj function
x = 0:0.2:10;
y0 = besselj(0,x);
y1 = besselj(1,x);
y2 = besselj(2,x);
y3 = besselj(3,x);
y4 = besselj(4,x);
y5 = besselj(5,x);
y6 = besselj(6,x);

% 用Bessel曲线画出的舞龙舞狮的效果。。。
for i=1:550;
clf;
%figure;这是每画一次就新开一个figure窗口
y0 = besselj(-1+0.02*i,x);
plot(x, y0, 'k--h','LineWidth',2,...
    'MarkerEdgeColor','y',...
    'MarkerFaceColor','r',...
    'MarkerSize',120);
pause(0.005);
%text(0.5 , 0.5, 'f(x) = g(x)', 'Color', 'k'); %打印文字到图像上
end
% Plot the points from the Bessel functions using standard marker types
% plot(x, y0, 'r+', x, y1, 'go', x, y2, 'b*', x, y3, 'cx', ...%%原来点点点(三个)是换行，后面的直接变成注释，下一行直接继续写，还是这行的东西
%     x, y4, 'ms', x, y5, 'yd', x, y6, 'kv');

end

% 1、线形
% 标记符 线形
% - 实线
% -- 虚线
% ： 点线
% -. 点横线
% 2、点形
% 标记符 点形
% + 加号
% o 圆圈
% * 星号
% . 实心点
% x 叉号
% s 正方形
% d 钻石形
% ^ 上三角形
% v 下三角形
% > 右三角形
% < 左三角形
% p 五角星形
% h 六角星形
% 3、颜色
% 标记符 颜色
% r 红
% g 绿
% b 蓝
% c 蓝绿
% m 紫红
% y 黄
% k 黑
% w 白


