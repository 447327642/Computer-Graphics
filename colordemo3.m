function colordemo

vert=[1 1 1;1 2 1;2 2 1;2 1 1;1 1 2;1 2 2;2 2 2;2 1 2];
fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5; 5 6 7 8];
sphere(36); 
h = findobj('Type','surface');
set(h,'FaceLighting','flat',...
      'FaceColor','interp',...
      'EdgeColor',[.4 .4 .4],...
      'BackFaceLighting','lit')
hold on
patch('faces',fac,'vertices',vert,'FaceColor','r');
light('Position',[1 3 2]);
light('Color',[.0 0.0 0.0]);
%light('Style','infinite');
light('Style','local');
light('Position',[-3 -1 3]);
%material shiny;
%material dull;
%materail metal;
ka=0.1;kd=0.3;ks=0.3;n=10;sc=0.5;
material([ka kd ks n sc]);
%lighting phong;
lighting gouraud;
%lighting flat;
axis vis3d off
hold off