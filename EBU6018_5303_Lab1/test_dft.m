% Test dft.m function

% Uniform function
s1 = ones(1, 64);
sw1 = dft(s1);
f = figure('Name', 'Uniform function');
stem4(sw1);
saveas(f, 'Results/1_Discrete_Fourier_Transform/Uniform_function.png');

% Delta function
s2 = (1:64) == 1;
sw2 = dft(s2);
f = figure('Name', 'Delta function');
stem4(sw2);
saveas(f, 'Results/1_Discrete_Fourier_Transform/Delta_function.png');

% Sine wave: Test with two different values of w
w_values = [5, 12.5]; % you can use any values here
for w = w_values
    s3 = sin(((1:64)-1)*2*pi*w/100);
    sw3 = dft(s3);
    f = figure('Name', ['Sine wave with w = ', num2str(w)]);
    stem4(sw3);
    saveas(f, ['Results/1_Discrete_Fourier_Transform/Sine_wave_w_', num2str(w), '.png']);
end

% Symmetrical rectangular pulse: Test with two different values of T
T_values = [15, 25]; % you can use any values here
for T = T_values
    s4 = [0:31 32:-1:1]<T;
    sw4 = dft(s4);
    f = figure('Name', ['Symmetrical rectangular pulse with T = ', num2str(T)]);
    stem4(sw4);
    saveas(f, ['Results/1_Discrete_Fourier_Transform/Symmetrical_rectangular_pulse_T_', num2str(T), '.png']);
end