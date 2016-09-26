function Newell()
n=input('number of edges n:\n');
%edges=zeros(n,2);
for i=1:n
    edges{i}=input('edges:\n');
end
areaNewell(edges);


function areaNewell(edges) 
Q=[0,0];
area=0;
sum=[0,0,0];
for i=1:n-1
    sum=sum+cross([edges{i+1}-Q,0],[edges{i}-Q,0]);
end
area=1/2*normest(sum+cross([edges{1}-Q,0],[edges{n}-Q,0]));
    disp (area);
end


function circle()
sita=0:pi/20:2*pi;
plot(r*cos(sita),r*sin(sita)); %中心点在原点，半径为r的圆  
plot(x0+r*cos(sita),y0+r*sin(sita));%中心点在（x0,y0）半径为rd的圆
end

end
