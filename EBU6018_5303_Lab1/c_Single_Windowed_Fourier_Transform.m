clear all;
s = audioread('Sounds/music.wav');

%fix window position and change window length
figure(1)
y1 = wft(s,10000,54);
y2 = wft(s,10000,256);
y3 = wft(s,10000,1024);
subplot(3,1,1); plot(abs(y1)); title('n=54,t=10000'); 
subplot(3,1,2); plot(abs(y2)); title('n=256,t=10000'); 
subplot(3,1,3); plot(abs(y3)); title('n=1024,t=10000'); 

%fix window length and change window position
figure(2)
z1 = wft(s,10000,256);
z2 = wft(s,20000,256);
z3 = wft(s,25000,256);
subplot(3,1,1); plot(abs(z1)); title('n=256,t=1000'); 
subplot(3,1,2); plot(abs(z2)); title('n=256,t=20000'); 
subplot(3,1,3); plot(abs(z3)); title('n=256,t=25000'); 

%use log to draw
figure(3)
subplot(3,1,1); plot(abs(log(y1))); title('n=54,t=10000'); 
subplot(3,1,2); plot(abs(log(y2))); title('n=256,t=10000'); 
subplot(3,1,3); plot(abs(log(y3))); title('n=1024,t=10000');

%use log to draw
figure(4)
subplot(3,1,1); plot(abs(log(z1))); title('n=256,t=1000'); 
subplot(3,1,2); plot(abs(log(z2))); title('n=256,t=20000'); 
subplot(3,1,3); plot(abs(log(z3))); title('n=256,t=25000'); 