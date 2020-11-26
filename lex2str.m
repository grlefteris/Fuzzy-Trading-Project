function mat=lex2str(file)
f=fopen(file);
y=fscanf(f,'%c');
fclose(f);
j=1;
l=1;
for i=1:length(y)
if (y(i)==char(10)||y(i)==char(44))
B(l)=cellstr(y(j:i-1));
l=l+1;
j=1+i;
end
end
mat=B;
