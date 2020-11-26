function mat=char2str(x)
f=fopen(x);
y=fscanf(f,'%c');
fclose(f);
j=1;
l=1;
for i=1:length(y)
if y(i)==' '
B(l)=cellstr(y(j:i));
l=l+1;
j=1+i;
end
end
mat=B;
