N = 2.^(3:1:8);
dft_times = zeros(1, length(N));
fft_times = zeros(1, length(N));

for i = 1:length(N)
  % Measure DFT time
  tic;
  for j = 1:100  % Changed from 1e3 to 100
    dft(ones(1,N(i)));
  end
  dft_times(i) = toc / 100;  % Changed from 1e3 to 100
  
  % Measure FFT time
  tic;
  for j = 1:100  % Changed from 1e3 to 100
    fft(ones(1,N(i)));
  end
  fft_times(i) = toc / 100;  % Changed from 1e3 to 100
end

% Create a log-log plot
loglog(N, dft_times, 'r', N, fft_times, 'b');
hold on;
loglog(N, N.^2/max(N.^2) * max(dft_times), 'r--');
loglog(N, N.*log(N)/max(N.*log(N)) * max(fft_times), 'b--');
legend('DFT time', 'FFT time', 'O(n^2)', 'O(n log n)');
xlabel('Input size (n)');
ylabel('Time (seconds)');
hold off;