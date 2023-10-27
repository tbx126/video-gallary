[s, fs] = audioread('Sounds/music.wav'); 

% Calculate the total duration of the audio signal in seconds
total_duration = length(s)/fs;

% Choose t_values within the duration of the audio signal
% (Here assuming window length n is in seconds, adjust if n is in samples)
t_values = round([0.1*total_duration, 0.5*total_duration, 0.9*total_duration]*fs);

n_values = [54, 256, 1024];

for i = 1:length(n_values)
    for j = 1:length(t_values)
        y = wft(s, t_values(j), n_values(i));
        f = (0:length(y)-1)*fs/length(y);
        subplot(length(n_values), length(t_values), (i-1)*length(t_values)+j);
        semilogy(f, abs(y));
        title(['n = ' num2str(n_values(i)) ', t = ' num2str(t_values(j))]);
        xlabel('Frequency (Hz)');
        ylabel('Magnitude (log scale)');
    end
end