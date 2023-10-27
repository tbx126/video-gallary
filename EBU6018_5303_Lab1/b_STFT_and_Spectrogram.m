%created for part4 b
[s,fs]= audioread('Sounds/music.wav' );
soundsc(s,fs);

subplot(1,3,1)
window = hamming(256); %set the length of 256
noverlap = 250; %noverlap<nfft
nfft = 2^nextpow2(length(window));
t = 0:1/fs:2;
y = s';
y = y(1,:); %because the sound is stereo
spectrogram(y,window,noverlap,nfft,fs,'yaxis');
h = colorbar;
h.Label.String = 'Power/Frequency(dB/Hz)';

subplot(1,3,2)
window = hamming(128); %set the length of 128
noverlap = 120; %noverlap<nfft
nfft = 2^nextpow2(length(window));
t = 0:1/fs:2;
y = s';
y = y(1,:); %because the sound is stereo
spectrogram(y,window,noverlap,nfft,fs,'yaxis');
h = colorbar;
h.Label.String = 'Power/Frequency(dB/Hz)';

subplot(1,3,3)
window = hamming(64); %set the length of 64
noverlap = 60; %noverlap<nfft
nfft = 2^nextpow2(length(window));
t = 0:1/fs:2;
y = s';
y = y(1,:); %because the sound is stereo
spectrogram(y,window,noverlap,nfft,fs,'yaxis');
h = colorbar;
h.Label.String = 'Power/Frequency(dB/Hz)';
saveas(gcf, fullfile('Results/4_STFT_and_Spectrogram', 'detailed_spectrogram_2.png'))