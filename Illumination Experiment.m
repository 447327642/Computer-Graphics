function colordemo

vert=[2.5 -0.5 -0.5;2.5 0.5 -0.5;3.5 0.5 -0.5;3.5 -0.5 -0.5;2.5 -0.5 0.5;2.5 0.5 0.5;3.5 0.5 0.5;3.5 -0.5 0.5];%������ ����
fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5; 5 6 7 8];%������ ��
sphere(36); 
h = findobj('Type','surface');%�ҵ��ոջ�������ľ����handles��h
set(h,'FaceLighting','flat',...%����h������
      'FaceColor','interp',...%texturemap��flat��interp
     'EdgeColor',[.0 .0 .0],...%�������ɫ                                    %������get(H)�õ����е������Լ����ڵ�ֵ��set(h)�õ������п���ֵ  axes(H) makes the axis with handle H current.
     'BackFaceLighting','lit');                                               %Execute GET(H) to see a list of axes object properties and their current values. 
hold on;                                                                        %Execute SET(H) to see a list of axesobject properties and legal property values.  %       'colormap','hsv',..
%patch('faces',fac,'vertices',vert,'FaceColor',[0,1,1]);
patch('faces',fac(1,:),'vertices',vert,'FaceColor','g');
patch('faces',fac(2,:),'vertices',vert,'FaceColor','m');                   %ÿ����ֱ���ɫ
patch('faces',fac(3,:),'vertices',vert,'FaceColor','b');
patch('faces',fac(4,:),'vertices',vert,'FaceColor','c');
patch('faces',fac(5,:),'vertices',vert,'FaceColor','y');
%patch('faces',fac(6,:),'vertices',vert,'FaceColor','r')
cdata=imread('2012628155641914.jpg');
h=surf([2.5,2.5;3.5,3.5],[-0.5,0.5;-0.5,0.5],[0.5,0.5;0.5,0.5],cdata);%���������ֱ�ΪX,Y,Z����,ÿ������ͼ�������Σ�Ҫ����ͼ�εĶԽ���������������������ƽ�棬�Խ����Ǿ����������ϵ������㣻��ʵ�����ĸ���һһ��Ӧ��
%set(h,'facecolor','texturemap');
%cdata=imread('IMG_0139.jpg');
%set(h,'cdata',cdata);
%load IMG_0139.jpg;
%patch('faces',fac(6,:),'vertices',vert,'FaceColor','texturemap');
set(h,'CData',cdata,'FaceColor','texturemap');%��仰��һ��Ҫ�еģ�������hָ��ı��潫����ɫ������Ϊ��ͼ��ͼ��cdata����Ķ�������Ϊ����surf�ĵ��ĸ���������ɫ�����������þͻ����
%colormap(map);
axis equal;
%colormap grey;
% Ҫ���б��滭���˲ŵ���axis����û��
% light('Position',[2 -3 1],'Style','local');
light('Position',[2 -3 1],'Color',[1.0 1.0 1.0],'Style','local');
% light('Color',[1.0 1.0 1.0]);
% light('Style','local');
% light('Position',[0 0 5],'Style','local');
light('Position',[0 0 5],'Color',[1.0 1.0 1.0],'Style','local');                %ÿ�зֱ��Ӧһ����Դ��ͬһ����Դ�����Ա���д��һ��
% light('Color',[1.0 1.0 1.0]);
% light('Color',[0.5 1.0 0.3]);
% light('Style','infinite');
% light('Style','local');
light('Position',[-3 -1 3],'Style','infinite','Color',[0.5 1.0 0.3]);
%material shiny;
%material dull;
%%%material�Ƕ��������嶼һ������
%material metal;
%  ka=0.1;kd=0.3;ks=0.3;n=10;sc=0.5;
%  material([ka kd ks n sc]);
%lighting phong;
%lighting gouraud;
%lighting flat;
%lighting none;
%%%lighting�Ƕ����й�Դ��һ��Ū��ͬһ��ģʽ
%axis vis3d off;
hold off;