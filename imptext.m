function [c1 c2 c3 x ]=imptext

y=urlread('http://dalab.ee.duth.gr/~296/feed.html');

c1=0;
c2=0;
c3=0;

for i=1:length(y)

if(y(i)=='T')&&(y(i+1)=='i')&&(y(i+2)=='m')
x(i)=y(i);
x(i+1)=y(i+1);
x(i+2)=y(i+2);
x(i+3)=y(i+3);
c1=c1+1;
end

if(y(i)=='F')&&(y(i+1)=='o')&&(y(i+2)=='r')
x(i)=y(i);
x(i+1)=y(i+1);
x(i+2)=y(i+2);
x(i+3)=y(i+3);
c2=c2+1;
end

if(y(i)=='G')&&(y(i+1)=='o')&&(y(i+2)=='l')
x(i)=y(i);
x(i+1)=y(i+1);
x(i+2)=y(i+2);
x(i+3)=y(i+3);
x(i+4)=y(i+4);
x(i+5)=y(i+5);
x(i+6)=y(i+6);
c3=c3+1;
end

end



