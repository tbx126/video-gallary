% Load in the audio files
[x1, fs1] = audioread('Sounds/firework-launch.mp3');
[x2, fs2] = audioread('Sounds/music.wav');
[x3, fs3] = audioread('Sounds/sp10.wav');
[x4, fs4] = audioread('Sounds/sp10_white.wav');

% Resample the audio files to 8kHz if needed
if fs1 ~= 8000
    x1 = resample(x1, 8000, fs1);
    fs1 = 8000;
end

if fs2 ~= 8000
    x2 = resample(x2, 8000, fs2);
    fs2 = 8000;
end

if fs3 ~= 8000
    x3 = resample(x3, 8000, fs3);
    fs3 = 8000;
end

if fs4 ~= 8000
    x4 = resample(x4, 8000, fs4);
    fs4 = 8000;
end

% Set window parameter
nfft = round(0.02*fs1); % Corresponds to a 20 ms window
w = 0.54 - 0.46 * cos(2*pi*[0:nfft-1]/(nfft-1));
noverlap = round(0.01*fs1); % 10 ms overlap

% because the sound is stereo
y1 = x1'; y1 = y1(1,:);
y2 = x2'; y2 = y2(1,:);
y3 = x3'; y3 = y3(1,:);
y4 = x4'; y4 = y4(1,:);

% Plot the spectrograms
figure('Position', [200 250 800 250]);
spectrogram(y1,w,noverlap,nfft,fs1,'yaxis'); 
h = colorbar;
h.Label.String = 'Power/Frequency(dB/Hz)';
title('firework-launch');
saveas(gcf,'Results/5_Comparing_noise_music_and_speech/firework-launch.jpg')

figure('Position', [200 250 800 250]);
spectrogram(y2,w,noverlap,nfft,fs2,'yaxis'); 
h = colorbar;
h.Label.String = 'Power/Frequency(dB/Hz)';
title('music');
saveas(gcf,'Results/5_Comparing_noise_music_and_speech/music.jpg')

figure('Position', [200 250 800 250]);
spectrogram(y3,w,noverlap,nfft,fs3,'yaxis'); 
h = colorbar;
h.Label.String = 'Power/Frequency(dB/Hz)';
title('sp10');
saveas(gcf,'Results/5_Comparing_noise_music_and_speech/sp10.jpg')

figure('Position', [200 250 800 250]);
spectrogram(y4,w,noverlap,nfft,fs4,'yaxis'); 
h = colorbar;
h.Label.String = 'Power/Frequency(dB/Hz)';
title('sp10_white');
saveas(gcf,'Results/5_Comparing_noise_music_and_speech/sp10_white.jpg')