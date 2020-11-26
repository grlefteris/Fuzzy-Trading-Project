%========EXPONENTIAL MOVING AVERAGE============
function ema=expma(time_series,alpha)
S=zeros(length(time_series),1);
S(1)=time_series(1);
for i=2:length(time_series)
    S(i)=alpha*time_series(i)+((1-alpha)*S(i-1));
end
ema=S;
