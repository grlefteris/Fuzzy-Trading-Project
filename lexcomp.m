function [mat, negativity]=lexcomp(twfile,lexicon)

t=zeros(length(twfile),1);
for k=1:length(twfile)
        if find(strcmp(twfile(k),lexicon)==1)
        t(k)=find(strcmp(twfile(k),lexicon)==1);
        end
end
mat=t;
s1=size(find(mat~=0));
s2=size(mat);
negativity=(s1(1)*100)/s2(1);