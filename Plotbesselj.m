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

% ��Bessel���߻�����������ʨ��Ч��������
for i=1:550;
clf;
%figure;����ÿ��һ�ξ��¿�һ��figure����
y0 = besselj(-1+0.02*i,x);
plot(x, y0, 'k--h','LineWidth',2,...
    'MarkerEdgeColor','y',...
    'MarkerFaceColor','r',...
    'MarkerSize',120);
pause(0.005);
%text(0.5 , 0.5, 'f(x) = g(x)', 'Color', 'k'); %��ӡ���ֵ�ͼ����
end
% Plot the points from the Bessel functions using standard marker types
% plot(x, y0, 'r+', x, y1, 'go', x, y2, 'b*', x, y3, 'cx', ...%%ԭ������(����)�ǻ��У������ֱ�ӱ��ע�ͣ���һ��ֱ�Ӽ���д���������еĶ���
%     x, y4, 'ms', x, y5, 'yd', x, y6, 'kv');

end

% 1������
% ��Ƿ� ����
% - ʵ��
% -- ����
% �� ����
% -. �����
% 2������
% ��Ƿ� ����
% + �Ӻ�
% o ԲȦ
% * �Ǻ�
% . ʵ�ĵ�
% x ���
% s ������
% d ��ʯ��
% ^ ��������
% v ��������
% > ��������
% < ��������
% p �������
% h ��������
% 3����ɫ
% ��Ƿ� ��ɫ
% r ��
% g ��
% b ��
% c ����
% m �Ϻ�
% y ��
% k ��
% w ��


