function turtle

% set up the figure
figure;
axis equal;
hold on;
%the start point and vector
p=[0,0]; w=[1,0];


%Please add your program here.
Nloop=50;%Poly(1,2^0.5*pi);
%Spiral(1,0.1*pi,1.06);
%tStar(8);
%NewStar(8);
%tPoly(21);
%tSpiral(200,4*pi/5,0.9);
%tShift(7,2);
%tSpin(5,2*pi/5);
%tScale(7,0.7);
%tScaleSpin(150,0.9,-2*pi/27);
%wheel(17);
%petal(20);
%tSpinPetal(5,2*pi/5);
%tFiveStar();
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
    p=tForward(p,w,1);
    w=tTurn(w,4*pi/n);
end
end


function NewStar(n)
for i=1:n
    p=tForward(p,w,1);
    w=tTurn(w,pi-pi/n);
end
end

function tPoly(n)
for i=1:n
    p=tForward(p,w,1);
    w=tTurn(w,2*pi/n);
end
end

function tSpiral(n,a,s)
for i=1:n
    p=tForward(p,w,1);
    w=tTurn(w,a);
    w=w*s;
end
end

%below are functions to draw a wheel;

function wheel(n)
    tPoly(1000);
for j=1:100   
    %tPoly(100);
for i=1:n
   w=tTurn(w,pi/2);
   p=tForward(p,w,500/pi);
   w=tTurn(w,pi);
   p=tMove(p,w,500/pi);
   w=tTurn(w,pi/2);
   
   w=tTurn(w,pi/2-(pi-(2*pi/n))/2); 
   p=tMove(p,w,500/pi*2*sin(pi/n));
   w=tTurn(w,-(pi/2-(pi-(2*pi/n))/2)); 
   w=tTurn(w,2*pi/n);
end
f(j)=getframe;
%clf;
%hold on;
p=tForward(p,w,1);
w=tTurn(w,2*pi/1000);
end
movie(f,1,3);
end

%below are functions to draw a petal,n signifies the number of petals and m
%is for number of vertexes in each petal;the ratio between diagonal lines is
%((1-cos(i*2*pi/m))/(1-cos(2*pi/m))),in respect to the law of cosine.
function petal(m)
   tPoly(m);
for j=1:m
   sumacosc=0;
for i=2:m-2
   a=(sqrt(1-cos(i*2*pi/m))/sqrt(1-cos(2*pi/m)));
   %display(a);
   b=(sqrt(1-cos((i-1)*2*pi/m))/sqrt(1-cos(2*pi/m)));
   c=1;
   cosc=(a^2+b^2-c^2)/(2*a*b);
   sumacosc = sumacosc + acos(cosc);
   w=tTurn(w,acos(cosc));
   p=tForward(p,w,a);
   w=tTurn(w,pi);
   p=tMove(p,w,a);
   w=tTurn(w,pi); 
end
   w=tTurn(w,2*pi-sumacosc);
   p=tForward(p,w,1);
   w=tTurn(w,2*pi/m);
end
end

 function tSpinPetal(n,angle)
        for i=1:n
            %your shape here
            petal(20);
            w=tTurn(w,angle);
        end
 end
%below are functions to draw a five-starred flag

function tStar5(n,distance)
for i=1:n
    p=tForward(p,w,distance);
    w=tTurn(w,4*pi/n);
end
end

function tFiveStar()      
        c=sqrt(1^2+1^2-2*1*1*cos(2/10*pi));
        r=sqrt(c^2/(1-cos(4/10*pi))/2);
        d=sqrt(1+r^2-2*r*cos(7/10*pi));
        display(d);
        %draw the bigger star
        w=tTurn(w,1/2*pi);
        p=tMove(p,w,d);
        w=tTurn(w,9/10*pi);
        tStar5(5,2+c);
        w=tTurn(w,1/10*pi);
        p=tMove(p,w,d);
        
        w=tResize(w,1/3);
        %draw the 1st subsidiary star
        w=tTurn(w,pi-atan(5/3));
        p=tMove(p,w,sqrt(34)*d)
        w=tTurn(w,pi);
        
        p=tMove(p,w,d);
        w=tTurn(w,9/10*pi);
        tStar5(5,2+c);
        w=tTurn(w,1/10*pi);
        p=tMove(p,w,d);
        w=tTurn(w,pi);
        
        p=tMove(p,w,sqrt(34)*d)
        w=tTurn(w,atan(5/3));
        %现在方向向下，在大五角星的中心
        %draw the 2st subsidiary star
        w=tTurn(w,pi/2+atan(1/7));
        p=tMove(p,w,sqrt(50)*d)
        w=tTurn(w,pi);
        
        p=tMove(p,w,d);
        w=tTurn(w,9/10*pi);
        tStar5(5,2+c);
        w=tTurn(w,1/10*pi);
        p=tMove(p,w,d);
        w=tTurn(w,pi);
        
        p=tMove(p,w,sqrt(50)*d)
        w=tTurn(w,pi/2-atan(1/7));
        %draw the 3st subsidiary star
        w=tTurn(w,pi/2-atan(2/7));
        p=tMove(p,w,sqrt(53)*d)
        w=tTurn(w,pi);
        
        p=tMove(p,w,d);
        w=tTurn(w,9/10*pi);
        tStar5(5,2+c);
        w=tTurn(w,1/10*pi);
        p=tMove(p,w,d);
        w=tTurn(w,pi);
        
        p=tMove(p,w,sqrt(53)*d)
        w=tTurn(w,pi/2+atan(2/7));
        %draw the 4st subsidiary star
        w=tTurn(w,atan(5/4));
        p=tMove(p,w,sqrt(41)*d)
        w=tTurn(w,pi);
        
        p=tMove(p,w,d);
        w=tTurn(w,9/10*pi);
        tStar5(5,2+c);
        w=tTurn(w,1/10*pi);
        p=tMove(p,w,d);
        w=tTurn(w,pi);
        
        p=tMove(p,w,sqrt(41)*d)
        w=tTurn(w,2*pi-atan(5/4));
end


%below are basic functions of LOGO language;
 
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

function w=tResize(w,scale)
      w=w*scale;
end

function drawline(p1,p2)
        x=[p1(1) p2(1)];
        y=[p1(end) p2(end)];
        plot(x,y,'+-');
end

%below are some functions for test;


function Poly(dist,angle)
    for i=1:Nloop
    p=tForward(p,w,dist);
    w=tTurn(w,angle);
    end
end
    
function Spiral(dist,angle,sfactor)
    for i=1:Nloop
    %p=tForward(p,w,dist);     
    tPoly(5);
    w=tTurn(w,angle);
    w=w*sfactor;
    end
end
end
