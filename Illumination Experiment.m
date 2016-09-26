function colordemo

vert=[2.5 -0.5 -0.5;2.5 0.5 -0.5;3.5 0.5 -0.5;3.5 -0.5 -0.5;2.5 -0.5 0.5;2.5 0.5 0.5;3.5 0.5 0.5;3.5 -0.5 0.5];%正方体 顶点
fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5; 5 6 7 8];%正方体 面
sphere(36); 
h = findobj('Type','surface');%找到刚刚画出的球的句柄（handles）h
set(h,'FaceLighting','flat',...%设置h的属性
      'FaceColor','interp',...%texturemap、flat、interp
     'EdgeColor',[.0 .0 .0],...%网格的颜色                                    %可以用get(H)得到所有的属性以及现在的值，set(h)得到其所有可能值  axes(H) makes the axis with handle H current.
     'BackFaceLighting','lit');                                               %Execute GET(H) to see a list of axes object properties and their current values. 
hold on;                                                                        %Execute SET(H) to see a list of axesobject properties and legal property values.  %       'colormap','hsv',..
%patch('faces',fac,'vertices',vert,'FaceColor',[0,1,1]);
patch('faces',fac(1,:),'vertices',vert,'FaceColor','g');
patch('faces',fac(2,:),'vertices',vert,'FaceColor','m');                   %每个面分别着色
patch('faces',fac(3,:),'vertices',vert,'FaceColor','b');
patch('faces',fac(4,:),'vertices',vert,'FaceColor','c');
patch('faces',fac(5,:),'vertices',vert,'FaceColor','y');
%patch('faces',fac(6,:),'vertices',vert,'FaceColor','r')
cdata=imread('2012628155641914.jpg');
h=surf([2.5,2.5;3.5,3.5],[-0.5,0.5;-0.5,0.5],[0.5,0.5;0.5,0.5],cdata);%三个参数分别为X,Y,Z矩阵,每部分贴图是三角形，要利用图形的对角线向另外两个顶点延伸平面，对角线是矩阵两个边上的两个点；其实就是四个点一一对应。
%set(h,'facecolor','texturemap');
%cdata=imread('IMG_0139.jpg');
%set(h,'cdata',cdata);
%load IMG_0139.jpg;
%patch('faces',fac(6,:),'vertices',vert,'FaceColor','texturemap');
set(h,'CData',cdata,'FaceColor','texturemap');%这句话是一定要有的，它设置h指向的表面将其颜色参数改为贴图，图是cdata里面的东西，因为本来surf的第四个参数是颜色，不这样设置就会出错
%colormap(map);
axis equal;
%colormap grey;
% 要所有表面画完了才调整axis否则没用
% light('Position',[2 -3 1],'Style','local');
light('Position',[2 -3 1],'Color',[1.0 1.0 1.0],'Style','local');
% light('Color',[1.0 1.0 1.0]);
% light('Style','local');
% light('Position',[0 0 5],'Style','local');
light('Position',[0 0 5],'Color',[1.0 1.0 1.0],'Style','local');                %每行分别对应一个光源，同一个光源的属性必须写在一起
% light('Color',[1.0 1.0 1.0]);
% light('Color',[0.5 1.0 0.3]);
% light('Style','infinite');
% light('Style','local');
light('Position',[-3 -1 3],'Style','infinite','Color',[0.5 1.0 0.3]);
%material shiny;
%material dull;
%%%material是对所有物体都一起作用
%material metal;
%  ka=0.1;kd=0.3;ks=0.3;n=10;sc=0.5;
%  material([ka kd ks n sc]);
%lighting phong;
%lighting gouraud;
%lighting flat;
%lighting none;
%%%lighting是对所有光源都一起弄成同一个模式
%axis vis3d off;
hold off;