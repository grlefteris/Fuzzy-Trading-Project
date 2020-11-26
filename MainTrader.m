function signal=MainTrader(Stock_Data_URL,txtname,days)
%======Import stock data sheet==========================
url2str(Stock_Data_URL,txtname);
[date price_open high low price_close volume]=stock_stats(txtname);
macd=macd_ind(price_close,12,26,9);
rsi=rsindex(price_close,14);
[adx adxr pdi mdi]=calcDMI(high,low,price_close);
direction=pdi-mdi;
y=readfis('Fuzzy_Trader');
k=1;
for i=length(rsi)-days:1:length(rsi)
s=evalfis([rsi(i) macd(i) direction(i) adx(i)], y);
if s<0.4
    sig='SELL';
elseif s>0.6
    sig='BUY';
else
    sig='HOLD';
end
signal(k)=cellstr(sig(1:length(sig)));
k=k+1;
end

