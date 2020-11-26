%=====Moving Average Convergence Divergence Indicator=====
function macd=macd_ind(timeseries,min_days,max_days,base_days)
a1=2/(min_days+1);
a2=2/(max_days+1);
a3=2/(base_days+1);
x=timeseries;
d1=expma(x,a1);
d2=expma(x,a2);
macd_line=d1-d2;
signal_line=expma(macd_line,a3);
macd=macd_line-signal_line;