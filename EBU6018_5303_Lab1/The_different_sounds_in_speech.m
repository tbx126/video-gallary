[x1, fs1] = audioread('Sounds/can-you-keep-a-secret.wav');
fig1 = mySpectrogram(x1, fs1);
title('can-you-keep-a-secret');
saveas(fig1, 'Results/6_The_different_sounds_in_speech/can-you-keep-a-secret.jpg');

[x2, fs2] = audioread('Sounds/come-on-you-can-do-it.wav');
fig2 = mySpectrogram(x2, fs2);
title('come-on-you-can-do-it');
saveas(fig2, 'Results/6_The_different_sounds_in_speech/come-on-you-can-do-it.jpg');

[x3, fs3] = audioread('Sounds/maybe-next-time-huh.wav');
fig3 = mySpectrogram(x3, fs3);
title('maybe-next-time-huh');
saveas(fig3, 'Results/6_The_different_sounds_in_speech/maybe-next-time-huh.jpg');