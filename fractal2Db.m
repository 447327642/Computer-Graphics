function fractal2D(nlevel)

geomMax=10000;
allgeom=struct('pts',{},'type',{});
ngeom=0;

if nargin==0
    nlevel=5;
end;

nlevel=6;
figure;
axis equal;
%axis([0 1 0 1]);
%hold on;
p=[1,0,1]; w=[1,0,0];
mat=eye(3);

%frac_bump(nlevel);
%frac_gask(nlevel);
frac_tree(nlevel);

function frac_bump(n)
    %i=0;
    npts=2; %nt=[0:0.01:1]
    pts=[0,0,1;1,0,1];
    geom0=aLines(pts);
    aDisp(geom0);
    mfrac(1)=getframe;clf;
    for i=1:n
        A=pts(1,:);C=pts(end,:);
        D=A+(C-A)/3;E=A+(C-A)*2/3;
        
        mat1=aScale(A,[0,0,1],1/3);
        mat2=mat1*aTrans(D-A)*aRot(D,pi/3);
        
        mat4=aScale(C,[0,0,1],1/3);
        mat3=mat4*aTrans(E-C)*aRot(E,-1*pi/3);
        
        ptsA=aTransform(pts,'aMatrix',{mat1});
        ptsD=aTransform(pts,'aMatrix',{mat2});
        ptsB=aTransform(pts,'aMatrix',{mat3});
        ptsE=aTransform(pts,'aMatrix',{mat4});
        if norm(ptsA(end,:)-ptsD(1,:))<1e-3 & norm(ptsD(end,:)-ptsB(1,:))<1e-3 ...
            & norm(ptsB(end,:)-ptsE(1,:))<1e-3
            pts=[ptsA(1:end,:);ptsD(2:end,:);ptsB(2:end,:);ptsE(2:end,:)];
            newgeom=aLines(pts);
           
            aDisp(newgeom);
            mfrac(i+1)=getframe;
        else
            error('the ends are not fitting, check error.');
        end;
        clf;
    end;
  
% [h, w, p] = size(mfrac(1).cdata);  % use 1st frame to get dimensions
%hf = figure; 
% resize figure based on frame's w x h, and place at (150, 150)
%set(hf, 'position', [150 150 w h]);
%axis off
% tell movie command to place frames at bottom left
%movie(hf,mfrac,3,1,[0 0 0 0]);
    
    movie(mfrac,3,1);
end

function frac_gask(n)
    %i=0;
    npts=4; %nt=[0:0.01:1]
    center=[0,0,1];p1=[1,0,1];
    pts=polyverts(center,p1,npts);
    pts=pts(1:npts,:)
    pts=aTransform(pts,'aRot',{center,-pi/4});
    geom0=aPolygon(pts);
    aDisp(geom0);
    mfrac(1)=getframe;clf;
    for i=1:n
        oldgeom=ngeom;
        for j=1:oldgeom
            pts=allgeom(j).pts;
            A=allgeom(j).pts(1,:);
            B=allgeom(j).pts(2,:);
            C=allgeom(j).pts(3,:);
            D=allgeom(j).pts(4,:);
            
            ptsA=aTransform(pts,'aScale',{A,center,0.85/2});
            ptsB=aTransform(pts,'aScale',{B,center,0.85/2});
            ptsC=aTransform(pts,'aScale',{C,center,0.85/2});
            ptsD=aTransform(pts,'aScale',{D,center,0.85/2});
            allgeom(j).pts=ptsA;
            geom1=aPolygon(ptsB);
            geom2=aPolygon(ptsC);
            geom3=aPolygon(ptsD);
            aDisp(allgeom(j));
            aDisp(geom1);
            aDisp(geom2);
            aDisp(geom3);
            
        end;
        mfrac(i+1)=getframe;
        clf;
    end;
    movie(mfrac,3,1);
end

function frac_tree(n)
    %i=0;
    npts=4; r=4;
    A=[0,0,1];B=[0,0,1];
    D=[0,r,1];C=[0,r,1];
    pts=[A;B;C;D];
    geom0=aPolygon(pts);
    aDisp(geom0);
    mfrac(1)=getframe;
    
    
    theta=pi/6; s=0.7;
    for i=1:n
        oldgeom=ngeom;
        for j=1:oldgeom
            pts=allgeom(j).pts;
            A=allgeom(j).pts(1,:);
            B=allgeom(j).pts(2,:);
            C=allgeom(j).pts(3,:);
            D=allgeom(j).pts(4,:);
        
            %mat1=aScale(A,[0,0,1],1/3);
            mat0=aTrans(D-A);c0=(C+D)/2;
            mat0=mat0*aScale(c0,[0,0,1],s);
            mat1=mat0*aTrans(D-c0)*aRot(D,pi/6);
            mat2=mat0*aTrans(C-c0)*aRot(C,-pi/6);
        
        
            ptsL=aTransform(pts,'aMatrix',{mat1});
            ptsR=aTransform(pts,'aMatrix',{mat2});
        
            geom1=aPolygon(ptsL);
            geom2=aPolygon(ptsR);
            aDisp(geom1);
            aDisp(geom2);
            
        end;
        mfrac(i+1)=getframe;
        %clf;
    end;
    movie(mfrac,3,1);
end

    function pts=polyverts(center,p1,n)

       theta=2*pi/n;
       for i=1:n+1
       pts(i,:)=aTransform(p1,'aRot',{center,theta*(i-1)});
   end;
    end

 function shiftpts=aShift(pts,w,n)
        for i=1:n
            shiftpts{i}=aTransform(pts,'aTrans',{w*i});
        end;
 end

 function spinpts=aSpin(pts,q,theta,n)
        for i=1:n
            spinpts{i}=aTransform(pts,'aRot',{q,theta*i});
        end;
 end

  function scalepts=aScales(pts,q,s,n)
        for i=1:n
            scalepts{i}=aTransform(pts,'aScale',{q,[0,0,1],s^i});
        end;
 end

function w=aVect(p1,p2)
    w=p2-p1;
end
    
    
function geom=aPoints(pts)

    geom.pts=pts;    
    geom.type=1;
    ngeom=ngeom+1;
    allgeom(ngeom)=geom;
    
    end

function geom=aLines(pts)
    geom.pts=pts;
    geom.type=2;
    ngeom=ngeom+1;
    allgeom(ngeom)=geom;
end

function geom=aPolygon(pts)

    geom.pts=pts;    
    geom.type=3;
    ngeom=ngeom+1;
    allgeom(ngeom)=geom;
end



 function ypts=aTransform(xpts,func,var)
    switch func
    case 'aTrans'
        w=var{1};
        ypts=xpts*aTrans(w);
          
    case 'aRot'
        q=var{1};theta=var{2};
        ypts=xpts*aRot(q,theta);
    case 'aScale'
        q=var{1};u=var{2};s=var{3};
        ypts=xpts*aScale(q,u,s);
    case 'aImP1v2'
        q0=var{1};u0=var{2};v0=var{3};
        q1=var{4};u1=var{5};v1=var{6};
        ypts=xpts*aImP1v2(q0,u0,v0,q1,u1,v1);
    case 'aImP3'
        p1=var{1};p2=var{2};p3=var{3};
        q1=var{4};q2=var{5};q3=var{6};
        ypts=xpts*aImP3(p1,p2,p3,q1,q2,q3); 
        case 'aMatrix'
           mat=var{1}; 
           ypts=xpts*mat; 
    otherwise
        error('Transform type is aTrans, aRot, aScale, aImP1v2, aImP3 and aMatrix only');
    end

     %ypts=xpts*func(v);
end

function mat=aTrans(w)
     mat=eye(3)+[zeros(1,3);zeros(1,3);w];
end

function mat=aRot(q,theta)
    q=q(1:2);
    rot=[cos(theta) sin(theta);-sin(theta) cos(theta)];
    mat=[rot,zeros(2,1);q*(eye(2)-rot),1];
end

function mat=aScale(q,u,s)
    %when u=[0,0,1] it is scaling in every direction.
    q=q(1:2);
    if u==[0,0,1]
        mat=[s*eye(2),zeros(2,1);q*(1-s)*eye(2),1];
    else
       u=u(1:2);
       scale=eye(2)+(s-1)*u'*u;
       mat=[scale,zeros(2,1);(1-s)*dot(q,u)*u,1];
    end
end

function mat=aImP1v2(q0,u0,v0,q1,u1,v1)
        mat=inv([u0;v0;q0])*[u1;v1;q1];
    end

function mat=aImP3(p1,p2,p3,q1,q2,q3)
        mat=inv([p1;p2;p3])*[q1;q2;q3];
end

function aDisp(X)
   hold on; 
   %X.type
   switch X.type
%     case 0
%          error('vectors can not be displayed!')           
    case 1
         aDispPts(X.pts);
    case 2
         aDispLns(X.pts);
    case 3
        aDispPoly(X.pts);
    otherwise
        error('display type is point(1) or line(2) only')
   end
    hold off;
end

function aDispPts(pts)
    npts=size(pts(:),1)/3;
    for i=1:npts
     plot(pts(i,1),pts(i,2),'.r','MarkerSize',100);
    end
end

function aDispLns(pts)
    npts=size(pts(:),1)/3;
    for i=1:npts-1
     plot([pts(i,1),pts(i+1,1)],[pts(i,2),pts(i+1,2)],'+-');
    end
end

function aDispPoly(pts)
    
    npts=size(pts(:),1)/3;
    for i=1:npts-1
     plot([pts(i,1),pts(i+1,1)],[pts(i,2),pts(i+1,2)],'-');
    end
    plot([pts(npts,1),pts(1,1)],[pts(npts,2),pts(1,2)],'-');
 end
  
end
