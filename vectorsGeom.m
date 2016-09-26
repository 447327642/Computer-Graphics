function vectorsGeom()
prec=0.001;
%vectors();
%Newell();
%isogon(n);
%proper_n(prec);
%polygon(n);
%circle();
%ployhedron();
PloyhApproxiSphere(12);
function vectors()
a=input('vector a:\n');
b=input('vector b:\n');
c=input('vector c:\n');
%dot(a,b);%���
%cross(a,b);%���
%Mcross(a,b);%ʹ�þ���˷��Ĳ��
%det(a,b,c);%����ʽ
function dot(a,b) 
d=a(1)*b(1)+a(2)*b(2)+a(3)*b(3);
disp (d);
end
function cross(a,b)
d=[a(2)*b(3)-a(3)*b(2), a(3)*b(1) - a(1)*b(3), a(1)*b(2) - a(2)*b(1)];
disp (d);
end
function Mcross(a,b)
d=a*[0,b(3),-b(2);-b(3),0,b(1);b(2),-b(1),0];
disp (d);

end
function det(a,b,c)
d=a(1)*b(2)*c(3)+a(2)*b(3)*c(1)+a(3)*b(1)*c(2)-a(1)*b(3)*c(2)-a(2)*b(1)*c(3)-a(3)*b(2)*c(1);
disp (d);
end
end



function Newell() %������������ɸ�������������������Ӧ���������ɸ���ά������ʾ�������
n=input('number of vertexs n:\n');
%vertexs=zeros(n,2);
for i=1:n
    vertex{i}=input('vertexs:\n');
end
areaNewell(vertex,n);
end

function areaP= areaNewell(vertex,n) %����������ɸ����γɵĶ���ε����
Q=[0,0];
areaP=0;
sum=[0,0,0];
for i=1:n-1
    sum=sum+cross([vertex{i+1}-Q,0],[vertex{i}-Q,0]);  %[vertex{i+1}-Q,0]��Ϊ�˰�ƽ������������ά�����������
end
areaP=1/2*normest(sum+cross([vertex{1}-Q,0],[vertex{n}-Q,0]));                 %normestΪ��������{}Ϊcell����
disp ('areaP:');    
disp (areaP);
    
end

function ratio= isogon(n)   %������n���ε��������ӵ�λԲ���֮��               %xxx=������()��xxx���Ǹú������⴫��ȥ�ı��������ں������ᵽ
%n=input('number of vertexs n:\n');
Q=[0,0];
for i=1:n
    vertex{i}=[cos((i-1)*2*pi/n),sin((i-1)*2*pi/n)]; %�������εĵ�
end
areaP=areaNewell(vertex,n);
ratio=areaP/pi;
disp ('n:'); %dispֻ����һ������������Ҫ�ֿ��������
disp (n);
disp ('ratio:');
disp (ratio);
end

function proper_n(prec)            %���ݸ����ľ��ȣ���0.001���������㾫��Ҫ�����С��n
n=3; %�������ο�ʼ����
ratio=0;
while ratio<1-prec
    ratio=isogon(n);
    n=n+1;
end
disp ('proper n:');
disp (n);
disp ('ratio:');
disp (ratio);
circle();
hold on;
ploygon(n);
end

function ploygon(n)
r=1;
theta=0:2*pi/n:2*pi;
plot(r*cos(theta),r*sin(theta)); %���ĵ���ԭ�㣬�뾶Ϊr��Բ  
%plot(x0+r*cos(theta),y0+r*sin(theta));%���ĵ��ڣ�x0,y0���뾶Ϊrd��Բ
end

function circle()
r=1;
theta=0:pi/1000:2*pi;
plot(r*cos(theta),r*sin(theta)); %���ĵ���ԭ�㣬�뾶Ϊr��Բ  
%plot(x0+r*cos(theta),y0+r*sin(theta));%���ĵ��ڣ�x0,y0���뾶Ϊrd��Բ
end

% function ployhedron()
% n=input('number of faces n:\n');%Ӧ������
% surfaces=
% for k=1:n;
% m{k}=input('number of vertexs for each face:\n');%Ӧ������
% Q{k}=[0,0,0]
% for j=1:m{k}
% P{k}{j}=input('vertexs of each face:\n');%Ӧ������ά������
% Q{k}=Q{k}+P{k}{j}./m{k};%��ѭ����õ�ƽ����һ��Q��ƽ����������������ϣ�
% end
% 
% end
% 
% end

function ployhedron()
n=input('number of faces n:\n');%Ӧ������
k=input('number of vertexes k:\n');%Ӧ������
for i=1:k
P{i}=input('vertexs:\n');%Ӧ������ά������
end
for i=1:n
fac{i}=input('faces:\n');%Ӧ��˳������ÿ�����Ӧ�ĵ���±꼯��,��Χ��1��k֮��
end
for i=1:n
m=length(fac{i});
Q{i}=0;
for j=1:m
Q{i}=Q{i}+P{fac{i}(j)}./m;%��ѭ����õ�ƽ����һ��Q��ƽ����������������ϣ�
end
end
sum=0;
for i=1:n
for j=1:m-1
sum=sum+det([(Q{i})',(P{fac{i}(j)})',(P{fac{i}(j+1)})']);
end
sum=sum+det([(Q{i})',(P{fac{i}(m)})',(P{fac{i}(1)})']);
end
vol=1/6*sum;
disp('vol=');
disp(vol);
end


function PloyhApproxiSphere(n)
[x,y,z]=sphere(n-1);
[f,v,c]=surf2patch(x,y,z);
a=n^2;%�������
b=size(f);
c=b(1);%�������
m=4;%�������ı��αƽ�
for i=1:c
Q{i}=0;
for j=1:m
Q{i}=Q{i}+v(f(i,j),:)./m;%��ѭ����õ�ƽ����һ��Q��ƽ����������������ϣ�
end
end
sum=0;
for i=1:c
for j=1:m-1
sum=sum+det([(Q{i})',(v(f(i,j),:))',(v(f(i,j+1),:))']);
end
sum=sum+det([(Q{i})',(v(f(i,m),:))',(v(f(i,1),:))']);
end
vol=1/6*sum;
disp('PloyhApproxi vol=');
disp(vol);
ratio=vol/(4/3*pi);
disp('ratio=');
disp(ratio);
end


end
