function Finite3DTurtle
% set up the figure
figure;
axis equal;
hold on;
%the start point and 朝向，左手方向，向上方向
p=[0,0,0]; 
% u=[1,0,0];
% v=[0,1,0]; 
% w=[0,0,1];
uvw=[1,0,0;0,1,0;0,0,1];
%the cube wall
Cwall=[2,2,2,-2,-2,-2];
%the sphere wall(originX,originY,originZ,radius)
Swall=[0,0,0,1];
%the ellipsoid wall(originX,originY,originZ,length of radii of 3 axes)%%不考虑旋转角度的椭圆，比较麻烦，X\Y轴还要各乘一些其他东西。
Ewall=[0,0,0,1,0.6,0.4];
walltype='cube';
DrawWall('cube');%这个函数要放在所有画图操作的后面，不然会画出最上面预定义的墙

%Please add your program here.
%-----以下为无限三维乌龟的程序(含有resize命令的均不能执行，因为其会破坏方向向量的单位向量性)----------------------------
%长度为d的正四面体;
% tPoly4(5);
%正n棱柱，底面边长为d，高为h，;
%tCylinder(5,1,3)
%n角星棱柱，底面边长为d，高为h，;
%tStar(5,1,3)
%三维螺线，迭代n次，每次转角a，放缩因子s，基础前进距离d
% tSpiral(100,pi/3.6,0.95,1)
%球，由n个圆构成，每个圆边数m，基础前进距离d
%tBall(20,30,1);

%以下函数为原二维乌龟程序中自带函数之三维版本
%tShift(10,1)
%tSpin(12,pi/4)
%tScale(7,1.3)
%带动画的
%tScaleSpin(30,1.5,pi/15)

%-----以下为有限三维乌龟的程序----------------------------
%有限正方体反射---------------------------------
%一面网格墙
% p=[0.3,0.2,0.1]; uvw=[1,0,0;0,1,0;0,0,1];
% Cwall=[2,2,2,-2,-2,-2];
% uvw=tYaw(uvw,pi/2); 
% uvw=tPitch(uvw,pi/5); 
% uvw=tRoll(uvw,pi/3);
% p=tNewForward(p,uvw,200);
% view(30,40);
%三维网格，过于纷繁复杂，在屏幕这个平面上看不清楚，只能看各个二维截面。。也不能像二维有限乌龟那样充满整个空间，因为运算量太大了。
% p=[0.3,0.2,0.1]; uvw=[1,0,0;0,1,0;0,0,1];
% Cwall=[2,2,2,-2,-2,-2];
% uvw=tYaw(uvw,pi/2.5); 
% uvw=tPitch(uvw,pi/1.5); 
% uvw=tRoll(uvw,pi/3.5);
% p=tNewForward(p,uvw,200);
% view(30,40);
%三维网格
% p=[0.3,0.2,0.1]; uvw=[1,0,0;0,1,0;0,0,1];
% Cwall=[2,2,2,-2,-2,-2];
% uvw=tYaw(uvw,pi/12.2); 
% uvw=tPitch(uvw,pi/1.66); 
% uvw=tRoll(uvw,pi/3.23);
% p=tNewForward(p,uvw,200);
% view(30,40);

%三维网格
% p=[0.3,0.2,0.1]; uvw=[1,0,0;0,1,0;0,0,1];
% Cwall=[2,2,2,-2,-2,-2];
% uvw=tYaw(uvw,pi/3); 
% uvw=tPitch(uvw,pi/12); 
% uvw=tRoll(uvw,pi/3);
% p=tNewForward(p,uvw,200);
% view(30,40);

%有限球面反射---------------------------------
% %多重三角形
% p=[0.1,0.5,0.3]; uvw=[1,0,0;0,1,0;0,0,1];
% Swall=[0,0,0,1];
% uvw=tYaw(uvw,pi/2.5); 
% uvw=tPitch(uvw,pi/7); 
% uvw=tRoll(uvw,pi/1.1);
% p=tNewForward(p,uvw,30);
% view(30,40);
%N芒星
% p=[0.1,0.5,0.3]; uvw=[1,0,0;0,1,0;0,0,1];
% Swall=[0,0,0,1];
% uvw=tYaw(uvw,pi/12); 
% uvw=tPitch(uvw,pi/7); 
% uvw=tRoll(uvw,pi/1.1);
% p=tNewForward(p,uvw,30);
% view(30,40);
%类似二维球型墙壁的花
% p=[0.1,0.5,0.3]; uvw=[1,0,0;0,1,0;0,0,1];
% Swall=[0,0,0,1];
% uvw=tYaw(uvw,pi/1.1); 
% uvw=tPitch(uvw,pi/1.2); 
% uvw=tRoll(uvw,pi/15);
% p=tNewForward(p,uvw,100);
% view(30,40);
%类似二维球型墙壁的花圈
% p=[0.1,0.5,0.3]; uvw=[1,0,0;0,1,0;0,0,1];
% Swall=[0,0,0,1];
% uvw=tYaw(uvw,pi/1.1); 
% uvw=tPitch(uvw,pi/1.2); 
% uvw=tRoll(uvw,pi/15);
% p=tNewForward(p,uvw,300);
% view(30,40);
%还是类似二维球型墙壁的花
% p=[0.2,0.4,0.3]; uvw=[1,0,0;0,1,0;0,0,1];
% Swall=[0,0,0,1];
% uvw=tYaw(uvw,pi/1.1); 
% uvw=tPitch(uvw,pi/1.2); 
% uvw=tRoll(uvw,pi/1.6);
% p=tNewForward(p,uvw,150);
% view(30,40);


%有限椭球面反射---------------------------------
% %一坨翔，但是发现都聚拢在中间的区域
% p=[0.3,0.2,0.1]; uvw=[1,0,0;0,1,0;0,0,1];
% Ewall=[0,0,0,1,0.6,0.4];
% uvw=tYaw(uvw,pi/2.7); 
% uvw=tPitch(uvw,pi/7); 
% uvw=tRoll(uvw,pi/1.1);
% p=tNewForward(p,uvw,150);
% view(30,40);
% %一坨翔，但是发现都聚拢在中间的区域
% p=[0.3,0.2,0.1]; uvw=[1,0,0;0,1,0;0,0,1];
% Ewall=[0,0,0,1,0.3,0.1];
% uvw=tYaw(uvw,pi/2.7); 
% uvw=tPitch(uvw,pi/5); 
% uvw=tRoll(uvw,pi/1.1);
% p=tNewForward(p,uvw,150);
% view(30,40);
%一坨翔，这个就不会都聚拢在中间了
% p=[-0.5,0.1,0.1]; uvw=[1,0,0;0,1,0;0,0,1];
% Ewall=[0,0,0,1,0.6,0.4];
% uvw=tYaw(uvw,pi/2.7); 
% uvw=tPitch(uvw,pi/3.3); 
% uvw=tRoll(uvw,pi/1.1);
% p=tNewForward(p,uvw,150);
% view(30,40);
%---------------------------------
% draw the wall
function DrawWall(type)
switch type
case 'cube'
vert=[Cwall(4) Cwall(5) Cwall(6);Cwall(4) Cwall(2) Cwall(6);Cwall(1) Cwall(2) Cwall(6);Cwall(1) Cwall(5) Cwall(6);Cwall(4) Cwall(5) Cwall(3);Cwall(4) Cwall(2) Cwall(3);Cwall(1) Cwall(2) Cwall(3);Cwall(1) Cwall(5) Cwall(3)];%正方体 顶点
fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5; 5 6 7 8];%正方体 面
patch('faces',fac,'vertices',vert,'FaceColor',[0,0,1],'FaceAlpha',0.1);
xlabel('x');ylabel('y');zlabel('z'); 
case 'sphere'
ellipsoid(Swall(1),Swall(2),Swall(3),Swall(4),Swall(4),Swall(4),100);
h = findobj('Type','surface');
set(h,'FaceColor','r','EdgeColor','none');
xlabel('x');ylabel('y');zlabel('z'); 
alpha(0.1);
view([1,1,1]); 
axis equal; 
case 'ellipsoid'
ellipsoid(Ewall(1),Ewall(2),Ewall(3),Ewall(4),Ewall(5),Ewall(6),100);
h = findobj('Type','surface');
set(h,'FaceColor','y','EdgeColor','none');
xlabel('x');ylabel('y');zlabel('z'); 
alpha(0.1);
view([1,1,1]); 
axis equal; 

% f = @(x,y,z) ((x-Ewall(1))/Ewall(4)).^2+((y-Ewall(2))/Ewall(5)).^2+((z-Ewall(3))/Ewall(6)).^2-1;      % 函数表达式
% [x,y,z] = meshgrid(-10:.1:10,-10:.1:10,-10:.1:10);       % 画图范围，不能把网格弄太细，否则会卡死。。
% v = f(x,y,z); % v=0就是要画的面
% h = patch(isosurface(x,y,z,v,0)); %绘图并得到句柄
% isonormals(x,y,z,v,h);%设置法线              
% set(h,'FaceColor','g','EdgeColor','none');
% xlabel('x');ylabel('y');zlabel('z'); 
% alpha(0.1); %不透明度  
% view([1,1,1]); 
% axis equal; 
end
title('Finite3DTurtle', 'fontsize', 10);
end

%---------------------------------
%below are Transforms of basic shapes;
    function tShift(n,d)
        for i=1:n
            %your shape here
            tStar(5,1,3)
            p=tMove(p,uvw,d);
        end
    end

    function tSpin(n,angle)
        for i=1:n
            %your shape here
            tPoly4(1);
            uvw=tYaw(uvw,angle); 
            uvw=tPitch(uvw,angle); 
            uvw=tRoll(uvw,angle); 
        end
    end

    function tScale(n,scale)
        for i=1:n
            %your shape here
            tPoly4(1);
            uvw=tResize(uvw,scale);
        end
    end

    function tScaleSpin(n,scale,angle)
        for i=1:n
            %your shape here
            uvw=tResize(uvw,scale)
            uvw=tYaw(uvw,angle); 
            uvw=tPitch(uvw,angle); 
            uvw=tRoll(uvw,angle);
            tPoly4(1);
            view(30,40);
            f(i)=getframe;           
        end
        movie(f,5,5);
    end

%-----------------------------
%below are functions to draw various patterns;


%长度为d的正四面体;
function tPoly4(d)
    n=4;
for i=1:n
    p=tNewForward(p,uvw,d);
for j=1:n
    uvw=tPitch(uvw,-pi/2);
    p=tNewForward(p,uvw,d);
end
    uvw=tYaw(uvw,pi/2);    
end
end
%正n棱柱，底面边长为d，高为h，;
function tCylinder(n,d,h)
for i=1:n
    p=tNewForward(p,uvw,d);
for j=1:2
    uvw=tPitch(uvw,-pi/2);
    p=tNewForward(p,uvw,h);
    uvw=tPitch(uvw,-pi/2);
    p=tNewForward(p,uvw,d);
end
    uvw=tYaw(uvw,2*pi/n);    
end
end
%n角星棱柱，底面边长为d，高为h，;
function tStar(n,d,h)
for i=1:n
    p=tNewForward(p,uvw,d);
for j=1:2
    uvw=tPitch(uvw,-pi/2);
    p=tNewForward(p,uvw,h);
    uvw=tPitch(uvw,-pi/2);
    p=tNewForward(p,uvw,d);
end
    uvw=tYaw(uvw,4*pi/n);    
end
end
%三维螺线，迭代n次，每次转角a，放缩因子s，基础前进距离d
function tSpiral(n,a,s,d)
for i=1:n
    p=tNewForward(p,uvw,d);
    uvw=tYaw(uvw,a); 
    uvw=tPitch(uvw,a); 
    uvw=tRoll(uvw,a); 
    uvw=tResize(uvw,s);
end
end
%球，由n个圆构成，每个圆边数m，基础前进距离d
function tBall(n,m,d)
    for i=1:n
        for j=1:m
            p=tNewForward(p,uvw,d);
            uvw=tYaw(uvw,2*pi/m);
        end
        uvw=tPitch(uvw,2*pi/n);
    end
end

%-----------------------------------------------------------------------------
%below are basic functions of 3D LOGO language;

function p=tNewForward(p,uvw,dist)
     if(dist<0.00000001)
     return; %避免一直在里面进行步长很小的循环跳不出来%%只有for和while能用break
     end
     switch walltype
     case 'cube'%1左2右3前4后5上6下
         Ns=[1,0,0;-1,0,0;0,1,0;0,-1,0;0,0,1;0,0,-1];
         d1=zeros(1,6);
         syms a positive;
         a = solve(dot(p+a*uvw(1,:)-[Cwall(1),Cwall(2),Cwall(3)],Ns(1,:))==0);
         a=double(a);
         disp(a);
         if (isempty(a));   %如果无解的话返回的解是个空集合，所以需要该判断语句。if (isempty(a))比if (length(a)==0)更快
             a=-1;
         end
         d1(1)=a;
         syms a positive;
         a = solve(dot(p+a*uvw(1,:)-[Cwall(4),Cwall(5),Cwall(6)],Ns(2,:))==0);
         a=double(a);
         disp(a);
         if (isempty(a));   
             a=-1;
         end
         d1(2)=a;
         syms a positive;
         a = solve(dot(p+a*uvw(1,:)-[Cwall(1),Cwall(2),Cwall(3)],Ns(3,:))==0);
         a=double(a);
         disp(a);
         if (isempty(a));   
             a=-1;
         end
         d1(3)=a;
         syms a positive;
         a = solve(dot(p+a*uvw(1,:)-[Cwall(4),Cwall(5),Cwall(6)],Ns(4,:))==0);
         a=double(a);
         disp(a);
         if (isempty(a));   
             a=-1;
         end
         d1(4)=a;
         syms a positive;
         a = solve(dot(p+a*uvw(1,:)-[Cwall(1),Cwall(2),Cwall(3)],Ns(5,:))==0);
         a=double(a);
         disp(a);
         if (isempty(a));   
             a=-1;
         end
         d1(5)=a;
         syms a positive;
         a = solve(dot(p+a*uvw(1,:)-[Cwall(4),Cwall(5),Cwall(6)],Ns(6,:))==0);
         a=double(a);
         disp(a);
         if (isempty(a));   
             a=-1;
         end
         d1(6)=a;
    
         b=d1;
         b(find(d1<0))=[];  %find函数给出的是元素的标号
         D1=min(b);
         num=1;
         for i=1:6
         if(d1(i)==D1)
         num=i;
         end
         end
         %disp('num');
         %disp(num);
         N=Ns(num,:);
         disp(N);
       if (dist<D1)
           p=tForward(p,uvw,dist);
       else
           p=tForward(p,uvw,D1);
           uvw=tRotate(uvw,N);
           p=tNewForward(p,uvw,dist-D1);
       end
     
     case 'sphere'         
       syms a positive;
       a = solve((p(1)-Swall(1)+a*uvw(1,1))^2+(p(2)-Swall(2)+a*uvw(1,2))^2+(p(3)-Swall(3)+a*uvw(1,3))^2==Swall(4)^2);
       a=double(a);
       if (a>0.0000000001)
       a=a-0.0000000001; %不然可能越界，如果计算用的是“入”而不是舍的话就会越界出BUG
       else
       a=0;
       return;%避免一直在里面进行步长很小的循环跳不出来
       end 
       disp(a);
       x=1/Swall(4)*(p(1)-Swall(1)+a*uvw(1,1));%要乘上一个1/Rwall(4)
       y=1/Swall(4)*(p(2)-Swall(2)+a*uvw(1,2));
       z=1/Swall(4)*(p(3)-Swall(3)+a*uvw(1,3));
       N=[x,y,z];
       disp(N);    
       if (dist<a)
           p=tForward(p,uvw,dist);
       else
           p=tForward(p,uvw,a);
           uvw=tRotate(uvw,N);
           p=tNewForward(p,uvw,dist-a);
       end
     case 'ellipsoid'
       syms a positive;
       a = solve((p(1)-Ewall(1)+a*uvw(1,1))^2/Ewall(4)^2+(p(2)-Ewall(2)+a*uvw(1,2))^2/Ewall(5)^2+(p(3)-Ewall(3)+a*uvw(1,3))^2/Ewall(6)^2==1);
       a=double(a);
       if (a>0.0000000001)
       a=a-0.0000000001; %不然可能越界，如果计算用的是“入”而不是舍的话就会越界出BUG
       else
       a=0;
       return;%避免一直在里面进行步长很小的循环跳不出来
       end 
       disp(a);
       x=1/Ewall(4)*(p(1)-Ewall(1)+a*uvw(1,1));%要乘上一个1/Rwall(4)
       y=1/Ewall(5)*(p(2)-Ewall(2)+a*uvw(1,2));
       z=1/Ewall(6)*(p(3)-Ewall(3)+a*uvw(1,3));
       N=[x,y,z];
       disp(N);    
       if (dist<a)
           p=tForward(p,uvw,dist);
       else
           p=tForward(p,uvw,a);
           uvw=tRotate(uvw,N);
           p=tNewForward(p,uvw,dist-a);
       end
     end    
end

function uvw=tRotate(uvw,N)%矩阵乘法左右规模有问题%已修复
       A=acos(dot(uvw(1,:),N));
       uvw=uvw*tRot(cross(N,uvw(1,:))/normest(cross(N,uvw(1,:))),pi-2*A);%发现转角其实是pi-2*A而不是A。。。
end

function rot=tRot(u,theta)
      rot=cos(theta)*eye(3)+(1-cos(theta))*((u)'*u)+sin(theta)*crossm(u);
end

function p=tForward(p,uvw,dist)
     newp=p+dist*uvw(1,:);
     drawline(p,newp);
     p=newp;
end

function p=tMove(p,uvw,dist)
     p=p+dist*uvw(1,:);
end

function uvw=tYaw(uvw,A)
     uv=uvw(1:2,:);
     uv=[cos(A) sin(A); -sin(A) cos(A)]*uv;
     uvw(1:2,:)=uv;
end

function uvw=tPitch(uvw,A)
     wu=[uvw(3,:);uvw(1,:)];
     wu=[cos(A) sin(A); -sin(A) cos(A)]*wu;
     uvw(3,:)=wu(1,:);
     uvw(1,:)=wu(2,:);
end

function uvw=tRoll(uvw,A)
     vw=uvw(2:3,:);
     vw=[cos(A) sin(A); -sin(A) cos(A)]*vw;
     uvw(2:3,:)=vw;
end

%该命令在有限乌龟中禁用
function uvw=tResize(uvw,scale)
      uvw=scale*eye(3)*uvw;
end

function drawline(p1,p2)
        x=[p1(1) p2(1)];
        y=[p1(2) p2(2)];
        z=[p1(end) p2(end)];
        plot3(x,y,z,'o-g');
end

%-------some basic matices-------
function uxv=crossm(u)
uxv=[0 u(3) -u(2);-u(3) 0 u(1);u(2) -u(1) 0];   
end


end