function FiniteTurtle
% set up the figure
figure;
axis equal;
hold on;
%the start point and vector
p=[0,0]; w=[1,0];
%the rectangular
%wall%%������̨������ѡ���ʼ�����̨���λ�ã��������ǻ�����ǰ��������ǻ������ȣ�����û������%%�������漣���켣���᲼������̨��������Ҳ��Ϊʲô��̨�����ȴ����׽�
wall=[2,2,-2,-2];
%the round wall(originX,originY,radius)
Rwall=[0,0,1];
%the ellipse wall(originX,originY,length of major/minor
%axis)%%��������ת�Ƕȵ���Բ���Ƚ��鷳��X\Y�ỹҪ����һЩ����������
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

%�Ծ���2Ϊǽ������������
% wall=[2,2,-2,-2];
% p=[2,0]; w=[1,0];
% w=tTurn(w,3*pi/2-pi/100);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,130);
%%%%%�����������ռ�%%%%%%%%�����������Ǵ�ģ���ͼ������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%�������̺������Ծ���2Ϊǽ��������һ����������ϵͳ�Ĳ�����
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.48523);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%%%�����������Ǵ�ģ���ͼ������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%�������̺������Ծ���2Ϊǽ��������һ����������ϵͳ�Ĳ�����
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.535523);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%%%�����������Ǵ�ģ���ͼ������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%�������̺������Ծ���2Ϊǽ��������һ����������ϵͳ�Ĳ�����
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.535553);
% p=tNewForward(p,w,3000);
%%%%%%%%%�����������Ǵ�ģ���ͼ������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%�������̺������Ծ���2Ϊǽ��������һ����������ϵͳ�Ĳ�����
% wall=[2,2,-2,-2];
%p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.535556);
% p=tNewForward(p,w,3000);
%%%%%%%%%�����������Ǵ�ģ���ͼ������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%�������̺������Ծ���2Ϊǽ��������һ����������ϵͳ�Ĳ�����
% wall=[2,2,-2,-2];
%p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.535559);
% p=tNewForward(p,w,3000);
%%%%%%%%%�����������Ǵ�ģ���ͼ������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%�������̺������Ծ���2Ϊǽ��������һ����������ϵͳ�Ĳ�����
% wall=[2,2,-2,-2];
%p=[0,0]; w=[1,0];
% w=tTurn(w,pi/1.5355575);
% p=tNewForward(p,w,3000);
%%%%%%%%%�����������Ǵ�ģ���ͼ������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%�������̺������Ծ���2Ϊǽ��������һ����������ϵͳ�Ĳ�����
% wall=[2,2,-2,-2];
%p=[0,0]; w=[1,0];
% w=tTurn(w,pi/0.55555);
% p=tNewForward(p,w,3000);
%%%%%%%�γɸ���֯��һ��ͼ��
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/2.5);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%�γɸ���֯��һ��ͼ��
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/9);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%�γɸ���֯��һ��ͼ��
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/180);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%�γɸ���֯��һ��ͼ��
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/75);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%�γɸ���֯��һ��ͼ��
% wall=[2,2,-2,-2];
% p=[0,0]; w=[1,0];
% w=tTurn(w,pi/45);
% DrawWall('rectangular');
% title('FiniteTurtle', 'fontsize', 10);
% p=tNewForward(p,w,3000);
%%%%%%%�γɸ���֯��һ��ͼ��
wall=[2,2,-2,-2];
p=[0,0]; w=[1,0];
w=tTurn(w,pi/30);
DrawWall('rectangular');
title('FiniteTurtle', 'fontsize', 10);
p=tNewForward(p,w,3000);

%��Բ��Ϊǽ��һ������ʵ�ֻ����ı��Σ�ǰ����������̫����Ϊ�����нⷽ�̺������н�����
% p=[cos(pi/-4),sin(pi/-4)]; w=[0,1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,30);
%��Բ��Ϊǽ��һ������ʵ�ֻ��������Σ�ǰ����������̫����Ϊ�����нⷽ�̺������н�����
% p=[cos(pi/3),sin(pi/3)]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,30);
%��Բ��Ϊǽ��һ������ʵ�ֻ���n���Σ�ǰ����������̫����Ϊ�����нⷽ�̺������н���������ʼ�㲻�����ڱ߽��ϣ�Ҫ��΢��ȥһ�㲻Ȼ��Խ���BUG�����н��켣�ͱ߽�����������㣩
% p=[cos(pi/n),sin(pi/n)]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,30);
% %��Բ��Ϊǽ��һ������ʵ�ֻ����տ���ǰ����������̫����Ϊ�����нⷽ�̺������н���������ʼ�㲻�����ڱ߽��ϣ�Ҫ��΢��ȥһ�㲻Ȼ��Խ���BUG�����н��켣�ͱ߽�����������㣩
% p=[cos(pi/3)/2-0.000001,sin(pi/3)/2-0.000001]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,60);
% %��Բ��Ϊǽ��һ������ʵ�ֻ����֣�ǰ����������̫����Ϊ�����нⷽ�̺������н���������ʼ�㲻�����ڱ߽��ϣ�Ҫ��΢��ȥһ�㲻Ȼ��Խ���BUG�����н��켣�ͱ߽�����������㣩
% p=[cos(pi/3)/12-0.000001,sin(pi/3)/12-0.000001]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,76);
%��Բ��Ϊǽ��һ������ʵ�ֻ�����һ�ֻ�1��ǰ����������̫����Ϊ�����нⷽ�̺������н���������ʼ�㲻�����ڱ߽��ϣ�Ҫ��΢��ȥһ�㲻Ȼ��Խ���BUG�����н��켣�ͱ߽�����������㣩
% p=[cos(pi/3)/50-0.000001,sin(pi/3)/50-0.000001]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,400);
%��Բ��Ϊǽ��һ������ʵ�ֻ����Ƶ�����ǣ�ǰ����������̫����Ϊ�����нⷽ�̺������н���������ʼ�㲻�����ڱ߽��ϣ�Ҫ��΢��ȥһ�㲻Ȼ��Խ���BUG�����н��켣�ͱ߽�����������㣩
% p=[cos(pi/3)/1.5,0]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,9.5);
%��Բ��Ϊǽ��һ������ʵ�ֻ�����һ�ֻ�2��ǰ����������̫����Ϊ�����нⷽ�̺������н���������ʼ�㲻�����ڱ߽��ϣ�Ҫ��΢��ȥһ�㲻Ȼ��Խ���BUG�����н��켣�ͱ߽�����������㣩
% p=[cos(pi/7)/1.2,0]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,80);
%��Բ��Ϊǽ��һ������ʵ�ֻ�����һ�ֻ�3��ǰ����������̫����Ϊ�����нⷽ�̺������н���������ʼ�㲻�����ڱ߽��ϣ�Ҫ��΢��ȥһ�㲻Ȼ��Խ���BUG�����н��켣�ͱ߽�����������㣩
% p=[cos(pi/7)/1.6,0]; w=[0,-1];
% Rwall=[0,0,1];
% p=tNewForward(p,w,70);
%Ҳ���԰�����ͼ�ζ���������,���������ӵĻ���


%%һ����֯��״ͼ����ͬ����һ�����������%%%%%%%�����������Ǵ��%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%����Բ��Ϊǽ������Բ�����ʽϴ�ʱ����ǶȱȽ���֣��������������С��·�ߣ�e-10���𣩣���һֱ����ǽ�ߣ�����ϵͳΪ�˷�ֹ����ж��俨��ǽ���������������ӣ�û�߼����Ϳ�ס�ˣ������ԾͲ���ͼ����
% p=[cos(pi/3)/2.8,0.1]; w=[0,-1];
% Ewall=[0,0,1,0.4];
% p=tNewForward(p,w,70);
% %һ����֯��״ͼ����ͬ����һ�����������
% p=[cos(pi/2),0.1]; w=[cos(1),sin(1)];
% Ewall=[0,0,1,0.4];
% p=tNewForward(p,w,70);
%%һ����֯��״ͼ����ͬ����һ�����������%%%%%%%�����������Ǵ��%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%�ر�������ǣ���������ô�任��ʼλ�úͳ�ʼ�������������Բ����󶼻�������һ����֯��״ͼ����
% p=[cos(pi/5)/10,0.1]; w=[cos(1),sin(1)];
% Ewall=[0,0,1,0.4];
% p=tNewForward(p,w,70);


DrawWall('rectangular');%�������Ҫ�������л�ͼ�����ĺ��棬��Ȼ�ử��������Ԥ�����ǽ
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
%�ѵ�λԲ�ϵ�����ת���ɽǶ�
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
%language;%%%%������Щ���Ʊ߽磬�жϺͼӼ�0.00000001����䶼����Ҫ�ˣ����ڷ��ֻ�����Ҫ�ģ���Ϊ���ǿ���Խ�磩�����Ǳ���֮���Դ�������Ϊǽ�ڵķ��������˵���ת����д��ײ��ǽ��ỻ�����������ǽ��ײ���Ż�����߽���߲�����ǽ����΢С�ľ��롣
function p=tNewForward(p,w,dist)
     if(dist<0.00000001)
     return; %����һֱ��������в�����С��ѭ����������%%ֻ��for��while����break
     end
     switch walltype
     case 'rectangular'%wall(1)���棬wall(2)���棬wall(3)���棬wall(4)����,������N����Ϊǽ���ڲ࣬���ﵽǽ���������������
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
             p=tForward(p,w,D1);%����һ��Ҫ��p=....��Ҫ��Ȼ����tNewForward���õ�ԭ����p
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
                 w=tTurn(w,pi-2*acos(dot(N,w)));%���ֲ���ʲô��״�������⣬ԭ�����ϸ���ת��ǹ�ʽֻ�ǽǶȴ�С����û��˵��˳ʱ��ת������ʱ��ת����ʵ�ϸ������䷽���ǽ�ڷ���������Ϊ�ڲࣩ֮��Ĺ�ϵ��ͬ�����������ǼнǴ�С������������������λ�ã�ת��Ҳ�ǲ�ͬ�ġ�����ӷ���������ת�ķ���ͻᷴ����������Ҫ����һ���б���˳ʱ��ת������ʱ��ת����䡣
             else
                 w=tTurn(w,-pi+2*acos(dot(N,w)));%���ֲ���ʲô��״�������⣬ԭ�����ϸ���ת��ǹ�ʽֻ�ǽǶȴ�С����û��˵��˳ʱ��ת������ʱ��ת����ʵ�ϸ������䷽���ǽ�ڷ���������Ϊ�ڲࣩ֮��Ĺ�ϵ��ͬ�����������ǼнǴ�С������������������λ�ã�ת��Ҳ�ǲ�ͬ�ġ�����ӷ���������ת�ķ���ͻᷴ����������Ҫ����һ���б���˳ʱ��ת������ʱ��ת����䡣
             end
             p=tNewForward(p,w,dist-D1);
         end
     case 'round'
       syms a positive;
       a = solve((p(1)-Rwall(1)+a*w(1))^2+(p(2)-Rwall(2)+a*w(2))^2==Rwall(3)^2);
       a=double(a);
       if (a>0.0000000001)
       a=a-0.0000000001; %��Ȼ����Խ�磬��������õ��ǡ��롱��������Ļ��ͻ�Խ���BUG
       else
       a=0;
       return;%����һֱ��������в�����С��ѭ����������
       end 
       disp(a);
       x=1/Rwall(3)*(p(1)-Rwall(1)+a*w(1));%Ҫ����һ��1/Rwall(3)
       y=1/Rwall(3)*(p(2)-Rwall(2)+a*w(2));
       N=[-x,-y];
       disp(N);
       if (dist<a)
           p=tForward(p,w,dist);
       else
           p=tForward(p,w,a);%����һ��Ҫ��p=....��Ҫ��Ȼ����tNewForward���õ�ԭ����p
           
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
               w=tTurn(w,pi-2*acos(dot(N,w)));%���ֲ���ʲô��״�������⣬ԭ�����ϸ���ת��ǹ�ʽֻ�ǽǶȴ�С����û��˵��˳ʱ��ת������ʱ��ת����ʵ�ϸ������䷽���ǽ�ڷ���������Ϊ�ڲࣩ֮��Ĺ�ϵ��ͬ�����������ǼнǴ�С������������������λ�ã�ת��Ҳ�ǲ�ͬ�ġ�����ӷ���������ת�ķ���ͻᷴ����������Ҫ����һ���б���˳ʱ��ת������ʱ��ת����䡣
           else
               w=tTurn(w,-pi+2*acos(dot(N,w)));%���ֲ���ʲô��״�������⣬ԭ�����ϸ���ת��ǹ�ʽֻ�ǽǶȴ�С����û��˵��˳ʱ��ת������ʱ��ת����ʵ�ϸ������䷽���ǽ�ڷ���������Ϊ�ڲࣩ֮��Ĺ�ϵ��ͬ�����������ǼнǴ�С������������������λ�ã�ת��Ҳ�ǲ�ͬ�ġ�����ӷ���������ת�ķ���ͻᷴ����������Ҫ����һ���б���˳ʱ��ת������ʱ��ת����䡣
           end
           
           p=tNewForward(p,w,dist-a);
       end    
     case 'ellipse'
       syms a positive;
       a = solve((p(1)-Ewall(1)+a*w(1))^2/Ewall(3)^2+(p(2)-Ewall(2)+a*w(2))^2/Ewall(4)^2==1);
       a=double(a);
       if (a>0.0000000001)
       a=a-0.0000000001; %��Ȼ����Խ�磬��������õ��ǡ��롱��������Ļ��ͻ�Խ���BUG
       else
       a=0;
       return;%����һֱ��������в�����С��ѭ����������
       end
       disp(a);
       x=1/Ewall(3)*(p(1)-Ewall(1)+a*w(1));%Ҫ����һ��1/Ewall(3)
       y=1/Ewall(4)*(p(2)-Ewall(2)+a*w(2));
       N=[-x,-y];
       if (dist<a)
           p=tForward(p,w,dist);
       else
           p=tForward(p,w,a);%����һ��Ҫ��p=....��Ҫ��Ȼ����tNewForward���õ�ԭ����p
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
               w=tTurn(w,pi-2*acos(dot(N,w)));%���ֲ���ʲô��״�������⣬ԭ�����ϸ���ת��ǹ�ʽֻ�ǽǶȴ�С����û��˵��˳ʱ��ת������ʱ��ת����ʵ�ϸ������䷽���ǽ�ڷ���������Ϊ�ڲࣩ֮��Ĺ�ϵ��ͬ�����������ǼнǴ�С������������������λ�ã�ת��Ҳ�ǲ�ͬ�ġ�����ӷ���������ת�ķ���ͻᷴ����������Ҫ����һ���б���˳ʱ��ת������ʱ��ת����䡣
           else
               w=tTurn(w,-pi+2*acos(dot(N,w)));%���ֲ���ʲô��״�������⣬ԭ�����ϸ���ת��ǹ�ʽֻ�ǽǶȴ�С����û��˵��˳ʱ��ת������ʱ��ת����ʵ�ϸ������䷽���ǽ�ڷ���������Ϊ�ڲࣩ֮��Ĺ�ϵ��ͬ�����������ǼнǴ�С������������������λ�ã�ת��Ҳ�ǲ�ͬ�ġ�����ӷ���������ת�ķ���ͻᷴ����������Ҫ����һ���б���˳ʱ��ת������ʱ��ת����䡣
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
%�������������ڹ��н���
function w=tResize(w,scale)
      w=w*scale;
end

function drawline(p1,p2)
        x=[p1(1) p2(1)];
        y=[p1(end) p2(end)];
        plot(x,y,'x-b');
end


end 
