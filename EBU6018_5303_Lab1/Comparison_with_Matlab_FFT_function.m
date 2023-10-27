% Test fft function

% Uniform function
s1 = ones(1, 64);
sw1 = fft(s1);
f = figure('Name', 'Uniform function');
subplot(4,1,1); stem(real(sw1)); title('Real part');
subplot(4,1,2); stem(imag(sw1)); title('Imaginary part');
subplot(4,1,3); stem(abs(sw1)); title('Magnitude');
subplot(4,1,4); stem(angle(sw1)); title('Phase');
saveas(f, 'Results/2_Comparison_with_Matlab’s_FFT_function/Uniform_function.png');

% Delta function
s2 = (1:64) == 1;
sw2 = fft(s2);
f = figure('Name', 'Delta function');
subplot(4,1,1); stem(real(sw2)); title('Real part');
subplot(4,1,2); stem(imag(sw2)); title('Imaginary part');
subplot(4,1,3); stem(abs(sw2)); title('Magnitude');
subplot(4,1,4); stem(angle(sw2)); title('Phase');
saveas(f, 'Results/2_Comparison_with_Matlab’s_FFT_function/Delta_function.png');

% Sine wave: Test with two different values of w
w_values = [5, 12.5]; % you can use any values here
for w = w_values
    s3 = sin(((1:64)-1)*2*pi*w/100);
    sw3 = fft(s3);
    f = figure('Name', ['Sine wave with w = ', num2str(w)]);
    subplot(4,1,1); stem(real(sw3)); title('Real part');
    subplot(4,1,2); stem(imag(sw3)); title('Imaginary part');
    subplot(4,1,3); stem(abs(sw3)); title('Magnitude');
    subplot(4,1,4); stem(angle(sw3)); title('Phase');
    saveas(f, ['Results/2_Comparison_with_Matlab’s_FFT_function/Sine_wave_w_', num2str(w), '.png']);
end

% Symmetrical rectangular pulse: Test with two different values of T
T_values = [15, 25]; % you can use any values here
for T = T_values
    s4 = [0:31 32:-1:1]<T;
    sw4 = fft(s4);
    f = figure('Name', ['Symmetrical rectangular pulse with T = ', num2str(T)]);
    subplot(4,1,1); stem(real(sw4)); title('Real part');
    subplot(4,1,2); stem(imag(sw4)); title('Imaginary part');
    subplot(4,1,3); stem(abs(sw4)); title('Magnitude');
    subplot(4,1,4); stem(angle(sw4)); title('Phase');
    saveas(f, ['Results/2_Comparison_with_Matlab’s_FFT_function/Symmetrical_rectangular_pulse_T_', num2str(T), '.png']);
end