% Read the audio data and sampling frequency
[x, fs] = audioread('Sounds/music.wav');

% If the audio is stereo, take only one channel
if size(x,2) > 1
    x = x(:,1);
end

% Define the window lengths to try
window_lengths = [256, 512, 1024, 2048];

% For each window length
for n = window_lengths
    % Create a Hamming window of length n
    window = hamming(n);
    
    % Compute and plot the spectrogram
    figure;
    spectrogram(x, window, [], [], fs, 'yaxis');
    title(['Spectrogram with window length ', num2str(n)]);
end