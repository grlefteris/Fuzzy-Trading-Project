function y=maximum(x1,x2)

if nargin==1
    y=0;
else
    if x1>x2
    y=x1;
    else
        y=x2;
    end
end
