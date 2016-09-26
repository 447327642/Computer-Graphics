function fractal(n);
%n is the total levels to call; usually n=5 or 6 is enough.

% set up the figure
figure;
axis equal;
hold on;
%the start point and vector
p=[0,0]; w=[1,0];

%please call or use your fractal function here
 %frac_gask(5);  %Siepingski mats;
 %frac_pgask(4,n);
frac_3bump(5);% Koch curves
%frac_pbump(7,5);

%---------------------------------------
function frac_3bump(n)
frac_bump(n);
w=tTurn(w,4*pi/3);
frac_bump(n);
w=tTurn(w,4*pi/3);
frac_bump(n);
end

function frac_bump(n)
%Koch curve
if n==0
    p=tForward(p,w,1);
    %tPoly(4);
    %p=tForward(p,w,1);
else
    w=tResize(w,1/3);
    frac_bump(n-1);
    w=tTurn(w,pi/3);
    frac_bump(n-1);
    w=tTurn(w,-2*pi/3);
    frac_bump(n-1);
    w=tTurn(w,pi/3);
    frac_bump(n-1);
    w=tResize(w,3);
end
end

%other basic shape
 function frac_pbump(pn,n)
%Koch curve
if n==0
    p=tForward(p,w,1);
    %tPoly(4);
    %p=tForward(p,w,1);
else
    w=tResize(w,1/3);
    frac_pbump(pn,n-1);
    
    w=tTurn(w,(pn-2)*pi/pn);
    for i=1:pn-1
    frac_pbump(pn,n-1);
    w=tTurn(w,-2*pi/pn);
    end;
    %frac_bump(n-1);
    w=tTurn(w,pi);
    frac_pbump(pn,n-1);
    w=tResize(w,3);
end
end   

%------------------------------
function frac_gask(n)
% Sierpinski mat:

if n==0 
    %tPoly(3);
    tPoly(4);
else
    for t=1:3
    w=tResize(w,1/2);
    frac_gask(n-1);
    w=tResize(w,2);
    p=tMove(p,w,1);
    w=tTurn(w,2/3*pi);
    end
end
end

%------------------------------
function frac_pgask(pn,n)
% polygon Sierpinski mat:

scale=0.4;
if n==0 
    tPoly(pn);
else
    for t=1:pn
    w=tResize(w,scale);
    frac_pgask(pn,n-1);
    w=tResize(w,1/scale);
    p=tMove(p,w,1);
    w=tTurn(w,2/pn*pi);
    end
end
end

%polygon for the orginal shape; you could add other shapes functions here;

function tPoly(n)
for i=1:n
    p=tForward(p,w,1);
    w=tTurn(w,2*pi/n);
end
end

function tStar(n)
for i=1:n
    p=tForward(p,w,1);
    w=tTurn(w,4*pi/n);
end
end

function tSpiral(n,a,s)
for i=1:n
    p=tForward(p,w,1);
    w=tTurn(w,a);
    w=w*s;
end
end
%below are basic functions of LOGO language;
%----------------------------------------------
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

end
