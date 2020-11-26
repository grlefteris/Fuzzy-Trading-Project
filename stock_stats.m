function [date price_open high low price_close volume]=stock_stats(file)
x=lex2str(file);
k=1;
for i=8:7:length(x)
    y1(k)=x(i);
    y2(k)=str2num(cell2mat(x(i+1)));
    y3(k)=str2num(cell2mat(x(i+2)));
    y4(k)=str2num(cell2mat(x(i+3)));
    y5(k)=str2num(cell2mat(x(i+4)));
    y6(k)=str2num(cell2mat(x(i+5)));
    k=k+1;
end
date=y1(length(y1):-1:1)';
price_open=y2(length(y1):-1:1)';
price_close=y3(length(y2):-1:1)';
high=y4(length(y1):-1:1)';
low=y5(length(y1):-1:1)';
volume=y6(length(y1):-1:1)';
    