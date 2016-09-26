function 3DTurtle
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
%*第二只乌龟
p2=[0.6,0.9,-0.7]; 
uvw2=[1,0,0;0,1,0;0,0,1];



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




%长度为d的正四面体;
%tPoly4(1);
%正n棱柱，底面边长为d，高为h，;
%tCylinder(5,1,3)
%n角星棱柱，底面边长为d，高为h，;
%tStar(5,1,3)
%三维螺线，迭代n次，每次转角a，放缩因子s，基础前进距离d
%tSpiral(100,pi/3.6,0.95,1)
%双螺线，迭代n次，每次转角a，放缩因子s，基础前进距离d
%tDualSpiral(10,pi/3.6,0.99,1)
%球，由n个圆构成，每个圆边数m，基础前进距离d
tBall(20,30,1);
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
%below are functions to draw various patterns;


%长度为d的正四面体;
function tPoly4(d)
    n=4;
for i=1:n
    p=tForward(p,uvw,d);
for j=1:n
    uvw=tPitch(uvw,-pi/2);
    p=tForward(p,uvw,d);
end
    uvw=tYaw(uvw,pi/2);    
end
end
%正n棱柱，底面边长为d，高为h，;
function tCylinder(n,d,h)
for i=1:n
    p=tForward(p,uvw,d);
for j=1:2
    uvw=tPitch(uvw,-pi/2);
    p=tForward(p,uvw,h);
    uvw=tPitch(uvw,-pi/2);
    p=tForward(p,uvw,d);
end
    uvw=tYaw(uvw,2*pi/n);    
end
end
%n角星棱柱，底面边长为d，高为h，;
function tStar(n,d,h)
for i=1:n
    p=tForward(p,uvw,d);
for j=1:2
    uvw=tPitch(uvw,-pi/2);
    p=tForward(p,uvw,h);
    uvw=tPitch(uvw,-pi/2);
    p=tForward(p,uvw,d);
end
    uvw=tYaw(uvw,4*pi/n);    
end
end
%三维螺线，迭代n次，每次转角a，放缩因子s，基础前进距离d
function tSpiral(n,a,s,d)
for i=1:n
    p=tForward(p,uvw,d);
    uvw=tYaw(uvw,a); 
    uvw=tPitch(uvw,a); 
    uvw=tRoll(uvw,a); 
    uvw=tResize(uvw,s)
end
end
%双螺线，迭代n次，每次转角a，放缩因子s，基础前进距离d
function tDualSpiral(n,a,s,d)
for i=1:n
    p=tForward(p,uvw,d);
    uvw=tYaw(uvw,a); 
    uvw=tPitch(uvw,a); 
    uvw=tRoll(uvw,a); 
    uvw=tResize(uvw,s)
end
uvw2=tYaw(uvw2,a); 
uvw2=tPitch(uvw2,a); 
uvw2=tRoll(uvw2,a); 
uvw2=tYaw(uvw2,a); 
uvw2=tPitch(uvw2,a); 
uvw2=tRoll(uvw2,a); 
uvw2=tYaw(uvw2,a); 
uvw2=tPitch(uvw2,a); 
uvw2=tRoll(uvw2,a); 
for i=1:n
    p2=tForwardBlue(p2,uvw2,d);
    uvw2=tYaw(uvw2,a); 
    uvw2=tPitch(uvw2,a); 
    uvw2=tRoll(uvw2,a); 
    uvw2=tResize(uvw2,s)
end
end
%球，由n个圆构成，每个圆边数m，基础前进距离d
function tBall(n,a,s,d)
    for i=1:n
        for j=1:m
            p=tForward(p,uvw,d);
            uvw=tYaw(uvw,2*pi/m);
        end
        uvw=tPitch(uvw,2*pi/n);
    end
end

%-----------------------------------------------------------------------------
%below are basic functions of 3D LOGO language;

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


function uvw=tResize(uvw,scale)
      uvw=scale*eye(3)*uvw;
end

function drawline(p1,p2)
        x=[p1(1) p2(1)];
        y=[p1(2) p2(2)];
        z=[p1(end) p2(end)];
        plot3(x,y,z,'d-r');
end

function p=tForwardBlue(p,uvw,dist)
     newp=p+dist*uvw(1,:);
     drawlineBlue(p,newp);
     p=newp;
end

function drawlineBlue(p1,p2)
        x=[p1(1) p2(1)];
        y=[p1(2) p2(2)];
        z=[p1(end) p2(end)];
        plot3(x,y,z,'*-b');
end

end 

