function fig = mySpectrogram(y, fs)

    % Resample the audio to 8kHz if needed
    if fs ~= 8000
        y = resample(y, 8000, fs);
        fs = 8000;
    end

    % Set window parameter
    nfft = round(0.02*fs); % Corresponds to a 20 ms window
    w = 0.54 - 0.46 * cos(2*pi*[0:nfft-1]/(nfft-1));
    noverlap = round(0.01*fs); % 10 ms overlap

    % In case the sound is stereo
    y = y'; y = y(1,:);

    % Plot the spectrograms
    fig = figure('Position', [200 250 800 250]);
    spectrogram(y,w,noverlap,nfft,fs,'yaxis'); 
    h = colorbar;
    h.Label.String = 'Power/Frequency(dB/Hz)';

end