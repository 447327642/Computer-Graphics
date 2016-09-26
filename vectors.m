function vectors()
a=input('vector a:\n');
b=input('vector b:\n');
c=input('vector c:\n');
%dot(a,b);
%cross(a,b);
det(a,b,c);
function dot(a,b) 
d=a(1)*b(1)+a(2)*b(2)+a(3)*b(3);
disp (d);
end
function cross(a,b)
d=[a(2)*b(3)-a(3)*b(2), a(3)*b(1) - a(1)*b(3), a(1)*b(2) - a(2)*b(1)];
disp (d);
end
function det(a,b,c)
d=a(1)*b(2)*c(3)+a(2)*b(3)*c(1)+a(3)*b(1)*c(2)-a(1)*b(3)*c(2)-a(2)*b(1)*c(3)-a(3)*b(2)*c(1);
disp (d);
end
end
