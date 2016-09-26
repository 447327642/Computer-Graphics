function toolCG()

%This is the matlab version of Computer graphics implementation

%a simple toolbox similar as the OPENGL.


figure;
axis vis3d;
%xmin=-3;xmax=3;
%axis([xmin xmax xmin xmax xmin xmax]);
view(3);
hold on;
Q=[0,0,0,1]; w=[1,0,0,0];
X=[1,0,0,1];

p0=Q;p=X;n=50;
%polygon(p0,p,n);
%spokes(p0,p,n);
%rosette(p0,p,n);
%aEllipse(p0,3,2,n);
%aCircles(p0,2,5);
%aElliSpin(p0,5,2,11);

%mysphere(n);
%myellipsoid(n,3,2);
%rotsphere(n,p0);
%Transsphere(n);
%patchellipse();
%surfellipse();
universe()
sun();
earthmoon();
function sun()
[x1, y1, z1] =ellipsoid(0,0,0,0.52,0.51,0.5,30);
cdata=imread('01300000308005122932726433858.jpg');
h=surf(x1,y1,z1,cdata);
set(h,'CData',cdata,'FaceColor','texturemap', 'EdgeColor',[.7 .0 .0]);
end
function earthmoon()
%%%%%%%画地球
[x, y, z] = ellipsoid(4,0,0,0.5,0.4,0.3,30);
cdata=imread('20110208231546979.jpg');
h1=surf(x,y,z,cdata);
set(h1,'CData',cdata,'FaceColor','texturemap');
%get(h1);找出h1对应的东西的信息
%%%%%%%画月球
[x2, y2, z2] = ellipsoid(5.5,0.0,0.0,0.3,0.27,0.25,30);
cdata=imread('u=1477633886,3693305969&fm=90&gp=0.jpg');
h2=surf(x2,y2,z2,cdata);
set(h2,'CData',cdata,'FaceColor','texturemap');
%%%%%%转地球
for i=1:1000
rotate(h1,[0,90],1,[0,0,0]); %[10,80][1,1,1]  %后面写的是错的，月球公转一圈是一个月。。不过这样又月球绕地球旋转速度太慢了会出现BUG，月球追不上地球，会出现月球和地球重叠，所以不按真实数据了。。%%地球每公转0.098630136986301369863013698630137度角即过了0.1天则下面的月球公转36度角
%h1 = findobj('Type','surface');
axis off;
%axis([-6,6,-6,6,-6,-6]);
pause(0.01);
%%%%%%转月球，只能写成嵌套，不然这两个在转动的球就不能同时出现
for j=1:5
% x=get(h1,'XData')
% y=get(h1,'YData')
% z=get(h1,'ZData')
rotate(h2,[0,90],6,[4*cos(2*pi/360*i),4*sin(2*pi/360*i),0]); %[10,80][1,1,1] 杨文轩说ROTATE不能返回旋转后的[x,y,z]值，也就是句柄h1还是原来的句柄，只能自己计算旋转的角度
axis off;
pause(0.001);   
%axis([-6,6,-6,6,-6,-6]);  %本来想用于固定视角，失败。
%view(3);
end
end
end
function universe()
f = @(x3,y3,z3) x3.^2+y3.^2+z3.^2-36;      % 函数表达式
[x3,y3,z3] = meshgrid(-10:.2:10,-10:.2:10,-10:.2:10);       % 画图范围，不能把网格弄太细，否则会卡死。。
v3 = f(x3,y3,z3); % v=0就是要画的面
h = patch(isosurface(x3,y3,z3,v3,0)); %绘图并得到句柄
isonormals(x3,y3,z3,v3,h);%设置法线              
set(h,'FaceColor','k','EdgeColor','none');
alpha(0.001); %不透明度  
end


% [x, y, z] = ellipsoid(0,0,0,0.5,0.4,0.3,30);         %这部分是示例如何拿到指向这个表面surf(x,y,z)的句柄H中的对应的X的矩阵
% h=surf(x,y,z);
% V = get(h,'XData')

function surfellipse()
[x, y, z] = ellipsoid(0,0,0,5,4,3,30);
surfl(x, y, z);
colormap hot;
axis equal;
end
function patchellipse()
f = @(x,y,z) x.^2+y.^2+1.4*z.^2-1;      % 函数表达式
[x,y,z] = meshgrid(-10:.2:10,-10:.2:10,-10:.2:10);       % 画图范围，不能把网格弄太细，否则会卡死。。
v = f(x,y,z); % v=0就是要画的面
h = patch(isosurface(x,y,z,v,0)); %绘图并得到句柄
isonormals(x,y,z,v,h);%设置法线              
set(h,'FaceColor','r','EdgeColor','none');
xlabel('x');ylabel('y');zlabel('z'); 
alpha(1); %不透明度  
grid on; 
view([1,1,1]); 
axis equal; 
camlight; 
lighting gouraud;
end



function rotsphere(nvex,p0)
[x,y,z]=sphere(nvex);%得到坐标网格
[f,v,c]=surf2patch(x,y,z);%f面，v点，c颜色
v=[v,ones(size(v,1),1)];%转化成仿射矩阵
vpts=v;faces=f;
z=[(1/3)^(1/2),(1/3)^(1/2),(1/3)^(1/2),0];%必须是单位向量,否则图形就会被拉伸（比如下面那个变成椭圆）
%mov(1)=getframe;
for i=1:300
clf;
vpts2=aTransform(vpts,'aRot',{p0,z,-i*(pi/15)});
geom1=aFaces(vpts2,faces);
view(3);
%view(40,50)
%axis vis3D;
%camroll(2*pi/2);
aDisp(geom1);
pause(0.05);
%mov(i+1)=getframe;%getframe是拍下当前已经画出的图像
end
%movie(mov,1,1);不知道为什么movie用不了
end


    function Transsphere(nvex)
[x,y,z]=sphere(nvex);
[f,v,c]=surf2patch(x,y,z);
v=[v,ones(size(v,1),1)];
vpts=v;faces=f;
%vpts2=aTransform(vpts,'aProj',{[1,1,1,1],p0,[0,0,1,0]});%从视点[1,1,1]向原点和单位法向量[0,0,1]确定的平面作透视投影所得结果
%vpts2=aTransform(vpts,'aPseudoProj',{[1,1,1,1],p0,[0,0,1,0]});%从视点[1,1,1]向原点和单位法向量[0,0,1]确定的平面作伪透视投影所得结果5
%vpts2=aTransform(vpts,'aPProj',{p0,[0,0,1,0],[(1/2)^(1/2),0,(1/2)^(1/2),0]});%沿方向[(1/2)^(1/2),0,(1/2)^(1/2)]和[(1/3)^(1/2),(1/3)^(1/2),(1/3)^(1/2)]向原点和单位法向量[0,0,1]确定的平面作平行投影所得结果%%%失败%%%%已修改好
%vpts2=aTransform(vpts,'aShear',{[(1/2)^(1/2),0,(1/2)^(1/2),1],p0,[(1/2)^(1/2),0,-(1/2)^(1/2),0],pi/3});%在点[0.2,0.3,0.5]和单位法向量[(1/2)^(1/2),0,(1/2)^(1/2)]确定的平面，面上单位向量[(1/2)^(1/2),0,-(1/2)^(1/2)]，以错切角pi/3作错切变换所得结果%%%失败%%已修正，需要弄比较适合的参数效果才比较明显
vpts2=aTransform(vpts,'aScale',{p0,[0,(1/6)^(1/2),(5/6)^(1/2),0],0.8});
geom1=aFaces(vpts2,faces);
aDisp(geom1);
    end

    function mysphere(nvex)
[x,y,z]=sphere(nvex);
[f,v,c]=surf2patch(x,y,z);
v=[v,ones(size(v,1),1)];
vpts=v;faces=f;
geom1=aFaces(vpts,faces);
aDisp(geom1);
    end

    function myellipsoid(nvex,a,b)
[x,y,z]=sphere(nvex);
[f,v,c]=surf2patch(x,y,z);
v=[v,ones(size(v,1),1)];
vpts=v;faces=f;

vpts2=aTransform(vpts,'aScale',{p0,[0,0,1,0],a});
vpts2=aTransform(vpts2,'aScale',{p0,[0,1,0,0],b});
geom2=aFaces(vpts2,faces);
aDisp(geom2);
    end
function polygon(p0,p1,n)
   pts=polyverts(p0,p1,n);z=[0,0,1,1];
    pts=aTransform(pts,'aRot',{p0,z,-pi/6});
  
   %polyn=aPoints(pts);
   polyn=aLines(pts);
   aDisp(polyn);
end

function spokes(p0,p1,n)
   pts=polyverts(p0,p1,n)
   polyn=aLines(pts);
   aDisp(polyn);
   for i=1:n
      spokespts=[p0;pts(i,:)];
      rose=aLines(spokespts);
      aDisp(rose);
   end
end

function rosette(p0,p1,n)
   pts=polyverts(p0,p1,n) 
   for i=1:n-1
       for j=i:n+1
           rosepts=[pts(i,:);pts(j,:)];
           rose=aLines(rosepts);
           aDisp(rose);
       end
   end
end

function aCircles(center,r,m)
    
   xvec=[1,0,0,0]; yvec=aTransform(xvec,'aRot',{[0,0,0,1],[0,0,0,1],pi/2});
   p1=center+r*xvec;
   npts=50;
   pts=polyverts(center,p1,npts);
   if m==1
     polyn=aLines(pts);
     aDisp(polyn);
   else z=[0,0,1,1];
     scalepts=aScales(pts,center,r,m);
     for i=1:m
         circlen=aLines(scalepts{i});
         aDisp(circlen);
     end
   end
end

function aEllipse(center,a,b,n)
   xvec=[1,0,0,0]; yvec=aTransform(xvec,'aRot',{[0,0,0,1],[0,0,1,1],pi/2});
   p1=center+a*xvec;
   pts=polyverts(center,p1,n);
   ellipts=aTransform(pts,'aScale',{center,yvec,b/a});
   ellip=aLines(ellipts);
   aDisp(ellip);
end

function aElliSpin(center,a,b,m)
   xvec=[1,0,0,0]; yvec=aTransform(xvec,'aRot',{[0,0,0,1],[0,0,1,1],pi/2});
   p1=center+a*xvec;
   n=50;
   pts=polyverts(center,p1,n);
   ellipts=aTransform(pts,'aScale',{center,yvec,b/a});
   %ellip=aLines(ellipts);
   %aDisp(ellip);
    %spinpts=aSpin(ellipts,center-a*xvec,2*pi/m,m);
    spinpts=aSpin(ellipts,center+a*yvec,2*pi/m,m);
     for i=1:m
         ellipn=aLines(spinpts{i});
         aDisp(ellipn);
     end
end

    function pts=polyverts(center,p1,n)

       theta=2*pi/n;z=[0,0,1,1];
       for i=1:n+1
       pts(i,:)=aTransform(p1,'aRot',{center,z,theta*(i-1)});
   end;
    end

 function shiftpts=aShift(pts,w,n)
        for i=1:n
            shiftpts{i}=aTransform(pts,'aTrans',{w*i});
        end;
 end

 function spinpts=aSpin(pts,q,theta,n)
        for i=1:n
            spinpts{i}=aTransform(pts,'aRot',{q,[0,0,0,1],theta*i});
        end;
 end

  function scalepts=aScales(pts,q,s,n)
        for i=1:n
            scalepts{i}=aTransform(pts,'aScale',{q,[0,0,0,1],s^i});
        end;
 end



function w=aVect(p1,p2)
    w=p2-p1;
end
    
    
function geom=aPoints(pts)
    geom.pts=pts;
    geom.type=1;
    end

function geom=aLines(pts)
    geom.pts=pts;
    geom.type=2;
end

function geom=aFaces(pts,faces)
    geom.pts=pts;
    geom.type=3;
    geom.faces=faces;
end

function geom=aCubes(pts,faces)
    geom.pts=pts;
    geom.type=4;
    geom.faces=faces;
end

%变换
 function ypts=aTransform(xpts,func,var)%点集，变换种类，参数
    switch func
    case 'aTrans'
        w=var{1};
        ypts=xpts*aTrans(w);
    case 'aRot'%点，向量，角度
        q=var{1};theta=var{3};u=var{2};
        ypts=xpts*aRot(q,u,theta);
    case 'aScale'
        q=var{1};u=var{2};s=var{3};
        ypts=xpts*aScale(q,u,s);
    case 'aMirror'
        q=var{1};vn=var{2};
        ypts=xpts*aMirror(q,vn);
    case 'aOrtho'
        q=var{1};vn=var{2};
        ypts=xpts*aOrtho(q,vn);
    case 'aProj'
        e=var{1};q=var{2};vn=var{3};
        ypts=xpts*aProj(e,q,vn);  
    case 'aPseudoProj'
        e=var{1};q=var{2};vn=var{3};
        ypts=xpts*aPseudoProj(e,q,vn); 
    case 'aImP1v3'
        q0=var{1};u0=var{2};v0=var{3};
        q1=var{4};u1=var{5};v1=var{6};
        ypts=xpts*aImP1v2(q0,u0,v0,q1,u1,v1);
    case 'aImP4'
        p1=var{1};p2=var{2};p3=var{3};p4=var{4};
        q1=var{5};q2=var{6};q3=var{7};q4=var{8};
        ypts=xpts*aImP3(p1,p2,p3,p4,q1,q2,q3,q4); 
    case 'aMatrix'
           mat=var{1}; 
           ypts=xpts*M; 
    case 'aPProj'%平行投影，指定平面的点q和单位法向量vn，投影沿的方向u，参见课本P181
         q=var{1};vn=var{2};u=var{3};
         ypts=xpts*aPProj(q,vn,u);  
    case 'aShear'%错切变换，指定平面的点q和单位法向量vn，面上的单位向量u，错切角theta，参见课本P181
         q=var{1};vn=var{2};u=var{3};theta=var{4};
         ypts=xpts*aShear(q,vn,u,theta);  
    otherwise
        error('Transform type is ''aTrans'', ''aRot'', ''aScale'', "aImP1v2","aImP3","aPProj","aShear" only')
    end

     %ypts=xpts*func(v);
end


%变换的矩阵


function mat=aImP1v3(q0,u0,v0,w0,q1,u1,v1,w1)
        mat=inv([u0;v0;w0;q0])*[u1;v1;w1;q1];
    end

function mat=aImP4(p1,p2,p3,p4,q1,q2,q3,q4)
        mat=inv([p1;p2;p3;p4])*[q1;q2;q3;q4];
end
%%%%%平移
function mat=aTrans(w)
     mat=eye(4)+[zeros(3,4);w];
end
%%%%%旋转
function mat=aRot(q,u,theta)
    q=q(1:3);u=u(1:3);
    m1=u'*u;
    m2=[0,u(3),-u(2);-u(3),0,u(1);u(2),-u(1),0];
    mrot=cos(theta)*eye(3)+(1-cos(theta))*m1+sin(theta)*m2;
    mat=[mrot,zeros(3,1);q*(eye(3)-mrot),1];
end
%%%%%放缩
function mat=aScale(q,u,s)
    q=q(1:3);
    if u==[0,0,0,1]
        mat=[s*eye(3),zeros(3,1);q*(1-s)*eye(3),1];
    else
       u=u(1:3);
       mscale=eye(3)+(s-1)*u'*u;
       mat=[mscale,zeros(3,1);(1-s)*dot(q,u)*u,1];
    end
  
end
%%%%%镜像
function mat=aMirror(q,vecn)
   q=q(1:3);vecn=vecn(1:3);
   mat=[eye(3)-2*vecn'*vecn,zeros(3,1);2*dot(q,vecn)*vecn,1];
end
%%%%%正交投影
function mat=aOrtho(q,vecn)
   q=q(1:3);vecn=vecn(1:3);
   mat=[eye(3)-vecn'*vecn,zeros(3,1);dot(q,vecn)*vecn,1];
end
%%%%%透视投影
function mat=aProj(e,q,vecn)
    q=q(1:3);vecn=vecn(1:3);e=e(1:3);
    mat=[dot(e-q,vecn)*eye(3)-vecn'*e,-vecn';dot(q,vecn)*e,dot(e,vecn)];
end
%%%%%伪透视投影
function mat=aPseudoProj(e,q,vecn)
    q=q(1:3);vecn=vecn(1:3);e=e(1:3);
    mat=[dot(e-q,vecn)*eye(3)-vecn'*(e+vecn),-vecn';dot(q,vecn)*(e+vecn),dot(e,vecn)];
end
%%%%%平行投影
function mat=aPProj(q,vecn,u)
    q=q(1:3);vecn=vecn(1:3);u=u(1:3);
    mat=[eye(3)-(vecn'*u)/dot(u,vecn),zeros(3,1);dot(q,vecn)/dot(u,vecn)*u,1];%原来向量之间点积只能用dot不能用*
end
%%%%%错切变换
function mat=aShear(q,vecn,u,theta)
    q=q(1:3);vecn=vecn(1:3);u=u(1:3);
    mat=[eye(3)+tan(theta)*(vecn'*u),zeros(3,1);-tan(theta)*dot(q,vecn)*u,1];
end

%下面是画图的函数，不用管

function aDisp(X)%画点面线体
   %X.type
   switch X.type
%     case 0
%          error('vectors can not be displayed!')           
    case 1
         aDispPts(X);%画点
    case 2
         aDispLns(X);%画线
    case 3
        aDispFaces(X);%画面
    case 4
        aDispCubes(X);%画体
    otherwise
     error('display type is point(1), line(2), faces(3), or cube(4) only')
    end
end

function aDispPts(X)
    pts=X.pts;
    npts=size(pts(:),1)/4;
    for i=1:npts
     plot3(pts(i,1),pts(i,2),pts(i,3),'.r','MarkerSize',100);
    end
end

function aDispLns(X)
    pts=X.pts;
    npts=size(pts(:),1)/4;
    for i=1:npts-1
     plot3([pts(i,1),pts(i+1,1)],[pts(i,2),pts(i+1,2)],...
         [pts(i,3),pts(i+1,3)],'+-');
    end
 end
function aDispFaces(X)
    pts=X.pts;
    npts=size(pts(:),1)/4;
    patchinfo.Vertices =pts(1:npts,1:3);
    patchinfo.Faces = X.faces;
    patchinfo.FaceColor = 'y';
    patch(patchinfo);
end

function aDispCubes(X)
    disp('To be implemented, now show faces only');
    pts=X.pts;
    npts=size(pts(:),1)/4;
    patchinfo.Vertices =pts(1:npts,1:3);
    patchinfo.Faces = X.faces;
    patchinfo.FaceColor = 'w';
    patch(patchinfo);
 end
end