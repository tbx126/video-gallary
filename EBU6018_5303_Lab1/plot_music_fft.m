% Note: Remember to replace the path with the correct path to your audio file
[s, fs] = audioread('Sounds/music.wav'); 

% Perform FFT
fft_result = fft(s);

% Calculate magnitude
magnitude = abs(fft_result);

% Generate frequency axis
f = (0:length(fft_result)-1)*fs/length(fft_result);

% Plot FFT magnitude
plot(f, magnitude);
title('Magnitude of FFT of the audio signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');