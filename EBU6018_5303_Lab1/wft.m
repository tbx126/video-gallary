function y = wft(s,t,n) 
s1 = s(floor(t-n/2)+(1:n));
y = fft(s1.*hann(n));
