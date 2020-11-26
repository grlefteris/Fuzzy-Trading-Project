function mat=url2str(URL,txtname)
y=urlread(URL);
f=fopen(txtname,'w+');
fprintf(f,'%s',y);
fclose(f);
mat=char2str(txtname);