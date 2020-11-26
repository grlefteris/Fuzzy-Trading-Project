%===========IMPORT TIME SERIES DATA==============
function data=impdata(FILE)
[NUM,TXT,RAW]=xlsread(FILE,'Sheet1','','basic');
for i=1:length(TXT)
    a(i)=str2num(cell2mat(TXT(i)));
end
data=a';