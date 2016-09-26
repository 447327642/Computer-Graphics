function FiniteTurtle
% set up the figure
figure;
axis equal;
hold on;
%the start point and vector
p=[0,0]; w=[1,0];
%the rectangular
%wall%%类似于台球桌，选择初始点就是台球的位置，向量就是击球方向，前进距离就是击球力度，不过没有做球洞%%大力出奇迹，轨迹将会布满整个台球桌，这也是为什么打台球力度大容易进
wall=[2,2,-2,-2];
%the round wall(originX,originY,radius)
Rwall=[0,0,1];
%the ellipse wall(originX,originY,length of major/minor
%axis)%%不考虑旋转角度的椭圆，比较麻烦，X\Y轴还要各乘一些其他东西。
Ewall=[0,0,1,0.4];
walltype='rectangular';






%Please add your program here.
Nloop=50;%Poly(1,2^0.5*pi);
%Spiral(1,0.1*pi,1.06);
%tStar(5);
%NewStar(8);
%tPoly(21);
%tSpiral(200,4*pi/5,0.9);
%tShift(7,2);
%tSpin(5,2*pi/5);
%tScale(7,0.7);
%tScaleSpin(150,0.9,-2*pi/27);

%以矩形2为墙，画出震荡折线
% wall=[2,2,-2,-2];
% p=[2,0]; w=[1,0];
% w=tTurn(w,3*pi/2-pi/100);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,130);
%%%%%布满了整个空间%%%%%%%%后面描述的是错的，此图形作废%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%混乱中蕴含秩序，以矩形2为墙，收敛到一个迭代函数系统的不动点
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.48523);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%%%后面描述的是错的，此图形作废%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%混乱中蕴含秩序，以矩形2为墙，收敛到一个迭代函数系统的不动点
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.535523);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%%%后面描述的是错的，此图形作废%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%混乱中蕴含秩序，以矩形2为墙，收敛到一个迭代函数系统的不动点
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.535553);
% p=tNewForward(p,w,3000);
%%%%%%%%%后面描述的是错的，此图形作废%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%混乱中蕴含秩序，以矩形2为墙，收敛到一个迭代函数系统的不动点
% wall=[2,2,-2,-2];
%p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.535556);
% p=tNewForward(p,w,3000);
%%%%%%%%%后面描述的是错的，此图形作废%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%混乱中蕴含秩序，以矩形2为墙，收敛到一个迭代函数系统的不动点
% wall=[2,2,-2,-2];
%p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.535559);
% p=tNewForward(p,w,3000);
%%%%%%%%%后面描述的是错的，此图形作废%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%混乱中蕴含秩序，以矩形2为墙，收敛到一个迭代函数系统的不动点
% wall=[2,2,-2,-2];
%p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.5355575);
% p=tNewForward(p,w,3000);
%%%%%%%%%后面描述的是错的，此图形作废%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%混乱中蕴含秩序，以矩形2为墙，收敛到一个迭代函数系统的不动点
% wall=[2,2,-2,-2];
%p=[0,0]; w=[1,0];
% w=tTurn(w,pi/0.55555);
% p=tNewForward(p,w,3000);
%%%%%%%形成各种织布一样图案
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/2.5);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%形成各种织布一样图案
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/9);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%形成各种织布一样图案
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/180);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%形成各种织布一样图案
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/75);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%形成各种织布一样图案
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/45);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%形成各种织布一样图案
wall=[2,2,-2,-2];
p=[0,0]; w=[1,0];
w=tTurn(w,pi/30);
DrawWall('rectangular');
title('FiniteTurtle', 'fontsize', 10);
p=tNewForward(p,w,3000);

%以圆形为墙，一条命令实现画正四边形（前进步数不能太大，因为里面有解方程函数运行较慢）
% p=[cos(pi/-4),sin(pi/-4)]; w=[0,1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,30);
%以圆形为墙，一条命令实现画正三边形（前进步数不能太大，因为里面有解方程函数运行较慢）
% p=[cos(pi/3),sin(pi/3)]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,30);
%以圆形为墙，一条命令实现画正n边形（前进步数不能太大，因为里面有解方程函数运行较慢）（初始点不能设在边界上，要稍微进去一点不然会越界出BUG导致行进轨迹和边界求出两个交点）
% p=[cos(pi/n),sin(pi/n)]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,30);
% %以圆形为墙，一条命令实现画向日葵（前进步数不能太大，因为里面有解方程函数运行较慢）（初始点不能设在边界上，要稍微进去一点不然会越界出BUG导致行进轨迹和边界求出两个交点）
% p=[cos(pi/3)/2-0.000001,sin(pi/3)/2-0.000001]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,60);
% %以圆形为墙，一条命令实现画车轮（前进步数不能太大，因为里面有解方程函数运行较慢）（初始点不能设在边界上，要稍微进去一点不然会越界出BUG导致行进轨迹和边界求出两个交点）
% p=[cos(pi/3)/12-0.000001,sin(pi/3)/12-0.000001]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,76);
%以圆形为墙，一条命令实现画另外一种花1（前进步数不能太大，因为里面有解方程函数运行较慢）（初始点不能设在边界上，要稍微进去一点不然会越界出BUG导致行进轨迹和边界求出两个交点）
% p=[cos(pi/3)/50-0.000001,sin(pi/3)/50-0.000001]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,400);
%以圆形为墙，一条命令实现画近似的五角星（前进步数不能太大，因为里面有解方程函数运行较慢）（初始点不能设在边界上，要稍微进去一点不然会越界出BUG导致行进轨迹和边界求出两个交点）
% p=[cos(pi/3)/1.5,0]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,9.5);
%以圆形为墙，一条命令实现画另外一种花2（前进步数不能太大，因为里面有解方程函数运行较慢）（初始点不能设在边界上，要稍微进去一点不然会越界出BUG导致行进轨迹和边界求出两个交点）
% p=[cos(pi/7)/1.2,0]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,80);
%以圆形为墙，一条命令实现画另外一种花3（前进步数不能太大，因为里面有解方程函数运行较慢）（初始点不能设在边界上，要稍微进去一点不然会越界出BUG导致行进轨迹和边界求出两个交点）
% p=[cos(pi/7)/1.6,0]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,70);
%也可以把以上图形都叠加起来,画出更复杂的花。


%%一部分织布状图案，同样是一条命令画出来的%%%%%%%后面描述的是错的%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%以椭圆形为墙，当椭圆离心率较大时折射角度比较奇怪，经常会折射出过小的路线（e-10级别），即一直沿着墙走，导致系统为了防止溢出判定其卡在墙里（比如下面这个例子，没走几步就卡住了），所以就不画图形了
% p=[cos(pi/3)/2.8,0.1]; w=[0,-1];
% Ewall=[0,0,1,0.4];
% p=tNewForward(p,w,70);
% %一部分织布状图案，同样是一条命令画出来的
% p=[cos(pi/2),0.1]; w=[cos(1),sin(1)];
% Ewall=[0,0,1,0.4];
% p=tNewForward(p,w,70);
%%一部分织布状图案，同样是一条命令画出来的%%%%%%%后面描述的是错的%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%特别神奇的是，不管我怎么变换初始位置和初始向量，在这个椭圆内最后都会收敛到一部分织布状图案中
% p=[cos(pi/5)/10,0.1]; w=[cos(1),sin(1)];
% Ewall=[0,0,1,0.4];
% p=tNewForward(p,w,70);


DrawWall('rectangular');%这个函数要放在所有画图操作的后面，不然会画出最上面预定义的墙
title('FiniteTurtle', 'fontsize', 10);




% draw the wall
function DrawWall(type)
switch type
case 'rectangular'
x=[wall(4) wall(2)];
y=[wall(1) wall(1)];
plot(x,y,'-k','linewidth', 10);
x=[wall(4) wall(2)];
y=[wall(3) wall(3)];
plot(x,y,'-k','linewidth', 10);
x=[wall(4) wall(4)];
y=[wall(1) wall(3)];
plot(x,y,'-k','linewidth', 10);
x=[wall(2) wall(2)];
y=[wall(1) wall(3)];
plot(x,y,'-k','linewidth', 10);
axis([wall(4) wall(2) wall(3) wall(1)]);
case 'round'
theta=0:pi/50:2*pi;
plot(Rwall(1)+Rwall(3)*cos(theta),Rwall(2)+Rwall(3)*sin(theta),'-k','linewidth', 5);
axis([Rwall(1)-Rwall(3) Rwall(1)+Rwall(3) Rwall(2)-Rwall(3) Rwall(2)+Rwall(3)]);
case 'ellipse'
theta=0:pi/50:2*pi;
plot(Ewall(1)+Ewall(3)*cos(theta+pi),Ewall(2)+Ewall(4)*sin(theta+pi),'-k','linewidth', 5);
axis([Ewall(1)-Ewall(3) Ewall(1)+Ewall(3) Ewall(2)-Ewall(4) Ewall(2)+Ewall(4)]);
end
end
%---------------------------------
%把单位圆上的坐标转换成角度
function theta=tconvert(x,y)
theta=acos(x);
if y<0
theta=2*pi-theta;
else
end
end
%---------------------------------
%below are Transforms of basic shapes;
    function tShift(n,d)
        for i=1:n
            %your shape here
            tStar(5);
            p=tMove(p,w,d);
        end
    end

    function tSpin(n,angle)
        for i=1:n
            %your shape here
            petal(20);
            w=tTurn(w,angle);
        end
    end

    function tScale(n,scale)
        for i=1:n
            %your shape here
            tStar(5);
             w=tResize(w,scale)
        end
    end

    function tScaleSpin(n,scale,angle)
        for i=1:n
            %your shape here
            tStar(5);
            w=tResize(w,scale)
            w=tTurn(w,angle);
             
        end
    end

%-----------------------------
%below are functions to draw star,polygon and sprial;


function tStar(n)
for i=1:n
    p=tNewForward(p,w,1);
    w=tTurn(w,4*pi/n);
end
end


function NewStar(n)
for i=1:n
    p=tNewForward(p,w,1);
    w=tTurn(w,pi-pi/n);
end
end

function tPoly(n)
for i=1:n
    p=tNewForward(p,w,1);
    w=tTurn(w,2*pi/n);
end
end

function tSpiral(n,a,s)
for i=1:n
    p=tNewForward(p,w,1);
    w=tTurn(w,a);
    w=w*s;
end
end


%below are basic functions of Finite LOGO
%language;%%%%下面那些控制边界，判断和加减0.00000001的语句都不需要了（现在发现还是需要的，因为还是可能越界），它们本来之所以存在是因为墙壁的法向量求反了导致转向函数写错，撞到墙后会换个方向继续往墙上撞，才会溢出边界或者不断向墙上走微小的距离。
function p=tNewForward(p,w,dist)
     if(dist<0.00000001)
     return; %避免一直在里面进行步长很小的循环跳不出来%%只有for和while能用break
     end
     switch walltype
     case 'rectangular'%wall(1)上面，wall(2)右面，wall(3)下面，wall(4)左面,法向量N定向为墙壁内侧，若达到墙角则算打到上下两面
         if(w(2)~=0)
             d1(1)=abs(1/w(2)*(wall(1)-p(2)));
             d1(3)=abs(1/w(2)*(wall(3)-p(2)));
         else
             d1(1)=999999;
             d1(3)=999999;
         end
         if(w(1)~=0)
             d1(2)=abs(1/w(1)*(wall(2)-p(1)));
             d1(4)=abs(1/w(1)*(wall(4)-p(1)));
         else
             d1(2)=999999;
             d1(4)=999999;
         end
     
         if (w(1)<0&&w(2)<0)
             if(d1(3)>d1(4))
                 D1=d1(4);N=[1,0];
             else
                 D1=d1(3);N=[0,1];
             end
         elseif (w(1)>=0&&w(2)<0)
             if(d1(3)>d1(2))
                 D1=d1(2);N=[-1,0];
             else
                 D1=d1(3);N=[0,1];
             end
         elseif (w(1)>=0&&w(2)>=0)
             if(d1(1)>d1(2))
                 D1=d1(2);N=[-1,0];
             else
                 D1=d1(1);N=[0,-1];
             end
         elseif (w(1)<0&&w(2)>=0)
             if(d1(1)>d1(4))
                 D1=d1(4);N=[1,0];
             else
                 D1=d1(1);N=[0,-1];
             end
         end
         if (dist<D1)
             p=tForward(p,w,dist);
         else
             p=tForward(p,w,D1);%这里一定要有p=....，要不然后面tNewForward还用的原来的p
             Ntheta=tconvert(N(1),N(2));
             wtheta=tconvert(w(1),w(2));
             phi=wtheta-Ntheta;
             while phi<-pi
                 phi=phi+2*pi;
             end
             while phi>pi
                 phi=phi-2*pi;
             end
             if phi>=0
                 w=tTurn(w,pi-2*acos(dot(N,w)));%发现不管什么形状都有问题，原来书上给的转向角公式只是角度大小，并没有说是顺时针转还是逆时针转，事实上根据入射方向和墙壁法向量（定为内侧）之间的关系不同（不单仅仅是夹角大小，还有两个方向的相对位置）转向也是不同的。如果从反方向入射转的方向就会反过来。所以要增加一个判别是顺时针转还是逆时针转的语句。
             else
                 w=tTurn(w,-pi+2*acos(dot(N,w)));%发现不管什么形状都有问题，原来书上给的转向角公式只是角度大小，并没有说是顺时针转还是逆时针转，事实上根据入射方向和墙壁法向量（定为内侧）之间的关系不同（不单仅仅是夹角大小，还有两个方向的相对位置）转向也是不同的。如果从反方向入射转的方向就会反过来。所以要增加一个判别是顺时针转还是逆时针转的语句。
             end
             p=tNewForward(p,w,dist-D1);
         end
     case 'round'
       syms a positive;
       a = solve((p(1)-Rwall(1)+a*w(1))^2+(p(2)-Rwall(2)+a*w(2))^2==Rwall(3)^2);
       a=double(a);
       if (a>0.0000000001)
       a=a-0.0000000001; %不然可能越界，如果计算用的是“入”而不是舍的话就会越界出BUG
       else
       a=0;
       return;%避免一直在里面进行步长很小的循环跳不出来
       end 
       disp(a);
       x=1/Rwall(3)*(p(1)-Rwall(1)+a*w(1));%要乘上一个1/Rwall(3)
       y=1/Rwall(3)*(p(2)-Rwall(2)+a*w(2));
       N=[-x,-y];
       disp(N);
       if (dist<a)
           p=tForward(p,w,dist);
       else
           p=tForward(p,w,a);%这里一定要有p=....，要不然后面tNewForward还用的原来的p
           
           Ntheta=tconvert(N(1),N(2));
           wtheta=tconvert(w(1),w(2));
           phi=wtheta-Ntheta;
           while phi<-pi
               phi=phi+2*pi;
           end
           while phi>pi
               phi=phi-2*pi;
           end
           if phi>=0
               w=tTurn(w,pi-2*acos(dot(N,w)));%发现不管什么形状都有问题，原来书上给的转向角公式只是角度大小，并没有说是顺时针转还是逆时针转，事实上根据入射方向和墙壁法向量（定为内侧）之间的关系不同（不单仅仅是夹角大小，还有两个方向的相对位置）转向也是不同的。如果从反方向入射转的方向就会反过来。所以要增加一个判别是顺时针转还是逆时针转的语句。
           else
               w=tTurn(w,-pi+2*acos(dot(N,w)));%发现不管什么形状都有问题，原来书上给的转向角公式只是角度大小，并没有说是顺时针转还是逆时针转，事实上根据入射方向和墙壁法向量（定为内侧）之间的关系不同（不单仅仅是夹角大小，还有两个方向的相对位置）转向也是不同的。如果从反方向入射转的方向就会反过来。所以要增加一个判别是顺时针转还是逆时针转的语句。
           end
           
           p=tNewForward(p,w,dist-a);
       end    
     case 'ellipse'
       syms a positive;
       a = solve((p(1)-Ewall(1)+a*w(1))^2/Ewall(3)^2+(p(2)-Ewall(2)+a*w(2))^2/Ewall(4)^2==1);
       a=double(a);
       if (a>0.0000000001)
       a=a-0.0000000001; %不然可能越界，如果计算用的是“入”而不是舍的话就会越界出BUG
       else
       a=0;
       return;%避免一直在里面进行步长很小的循环跳不出来
       end
       disp(a);
       x=1/Ewall(3)*(p(1)-Ewall(1)+a*w(1));%要乘上一个1/Ewall(3)
       y=1/Ewall(4)*(p(2)-Ewall(2)+a*w(2));
       N=[-x,-y];
       if (dist<a)
           p=tForward(p,w,dist);
       else
           p=tForward(p,w,a);%这里一定要有p=....，要不然后面tNewForward还用的原来的p
           Ntheta=tconvert(N(1),N(2));
           wtheta=tconvert(w(1),w(2));
           phi=wtheta-Ntheta;
           while phi<-pi
               phi=phi+2*pi;
           end
           while phi>pi
               phi=phi-2*pi;
           end
           if phi>=0
               w=tTurn(w,pi-2*acos(dot(N,w)));%发现不管什么形状都有问题，原来书上给的转向角公式只是角度大小，并没有说是顺时针转还是逆时针转，事实上根据入射方向和墙壁法向量（定为内侧）之间的关系不同（不单仅仅是夹角大小，还有两个方向的相对位置）转向也是不同的。如果从反方向入射转的方向就会反过来。所以要增加一个判别是顺时针转还是逆时针转的语句。
           else
               w=tTurn(w,-pi+2*acos(dot(N,w)));%发现不管什么形状都有问题，原来书上给的转向角公式只是角度大小，并没有说是顺时针转还是逆时针转，事实上根据入射方向和墙壁法向量（定为内侧）之间的关系不同（不单仅仅是夹角大小，还有两个方向的相对位置）转向也是不同的。如果从反方向入射转的方向就会反过来。所以要增加一个判别是顺时针转还是逆时针转的语句。
           end
           p=tNewForward(p,w,dist-a);
       end     
     end
end


function p=tForward(p,w,dist)
     newp=p+dist*w;
     drawline(p,newp);
     p=newp;
end

function p=tMove(p,w,dist)
     p=p+dist*w;
end

function w=tTurn(w,theta)
     w=w*[cos(theta) sin(theta); -sin(theta) cos(theta)];
end
%该命令在有限乌龟中禁用
function w=tResize(w,scale)
      w=w*scale;
end

function drawline(p1,p2)
        x=[p1(1) p2(1)];
        y=[p1(end) p2(end)];
        plot(x,y,'x-b');
end


end 
