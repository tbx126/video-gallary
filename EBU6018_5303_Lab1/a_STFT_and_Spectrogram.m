%created for part4 a
[s,fs]= audioread('Sounds/music.wav' );
soundsc(s,fs);

folderName = 'Results/4_STFT_and_Spectrogram';

figure(1)
spectrogram(s);
saveas(gcf, fullfile(folderName, 'simple_spectrogram.png'))

figure(2)
window = hamming(128); %set window type and length
noverlap = 120;
nfft = 2^nextpow2(length(window));
t = 0:1/fs:2;
y = s';
y = y(1,:); %because the sound s is stereo
spectrogram(y,window,noverlap,nfft,fs,'yaxis');
h = colorbar; %use colorbar
h.Label.String = 'Power/Frequency(dB/Hz)';
saveas(gcf, fullfile(folderName, 'detailed_spectrogram_1.png'))