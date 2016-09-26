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
%dot(a,b);%点积
%cross(a,b);%叉积
%Mcross(a,b);%使用矩阵乘法的叉积
%det(a,b,c);%行列式
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



function Newell() %根据输入的若干个点坐标计算多边形面积，应当输入若干个二维向量表示点的坐标
n=input('number of vertexs n:\n');
%vertexs=zeros(n,2);
for i=1:n
    vertex{i}=input('vertexs:\n');
end
areaNewell(vertex,n);
end

function areaP= areaNewell(vertex,n) %计算给定若干个点形成的多边形的面积
Q=[0,0];
areaP=0;
sum=[0,0,0];
for i=1:n-1
    sum=sum+cross([vertex{i+1}-Q,0],[vertex{i}-Q,0]);  %[vertex{i+1}-Q,0]是为了把平面的向量搞成三维向量以做叉积
end
areaP=1/2*normest(sum+cross([vertex{1}-Q,0],[vertex{n}-Q,0]));                 %normest为二范数，{}为cell数组
disp ('areaP:');    
disp (areaP);
    
end

function ratio= isogon(n)   %计算正n边形的面积与外接单位圆面积之比               %xxx=函数名()，xxx就是该函数向外传出去的变量，需在函数中提到
%n=input('number of vertexs n:\n');
Q=[0,0];
for i=1:n
    vertex{i}=[cos((i-1)*2*pi/n),sin((i-1)*2*pi/n)]; %计算多边形的点
end
areaP=areaNewell(vertex,n);
ratio=areaP/pi;
disp ('n:'); %disp只能有一个参数，所以要分开打出来。
disp (n);
disp ('ratio:');
disp (ratio);
end

function proper_n(prec)            %根据给定的精度（如0.001）给出满足精度要求的最小的n
n=3; %从三角形开始迭代
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
plot(r*cos(theta),r*sin(theta)); %中心点在原点，半径为r的圆  
%plot(x0+r*cos(theta),y0+r*sin(theta));%中心点在（x0,y0）半径为rd的圆
end

function circle()
r=1;
theta=0:pi/1000:2*pi;
plot(r*cos(theta),r*sin(theta)); %中心点在原点，半径为r的圆  
%plot(x0+r*cos(theta),y0+r*sin(theta));%中心点在（x0,y0）半径为rd的圆
end

% function ployhedron()
% n=input('number of faces n:\n');%应输入数
% surfaces=
% for k=1:n;
% m{k}=input('number of vertexs for each face:\n');%应输入数
% Q{k}=[0,0,0]
% for j=1:m{k}
% P{k}{j}=input('vertexs of each face:\n');%应输入三维点坐标
% Q{k}=Q{k}+P{k}{j}./m{k};%在循环后得到平面上一点Q（平面各个顶点的线性组合）
% end
% 
% end
% 
% end

function ployhedron()
n=input('number of faces n:\n');%应输入数
k=input('number of vertexes k:\n');%应输入数
for i=1:k
P{i}=input('vertexs:\n');%应输入三维点坐标
end
for i=1:n
fac{i}=input('faces:\n');%应按顺序输入每个面对应的点的下标集合,范围在1到k之间
end
for i=1:n
m=length(fac{i});
Q{i}=0;
for j=1:m
Q{i}=Q{i}+P{fac{i}(j)}./m;%在循环后得到平面上一点Q（平面各个顶点的线性组合）
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
a=n^2;%点的数量
b=size(f);
c=b(1);%面的数量
m=4;%都是用四边形逼近
for i=1:c
Q{i}=0;
for j=1:m
Q{i}=Q{i}+v(f(i,j),:)./m;%在循环后得到平面上一点Q（平面各个顶点的线性组合）
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
