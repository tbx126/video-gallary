[x1, fs1] = audioread('Sounds/firework-launch.mp3');
fig1 = mySpectrogram(x1, fs1);
title('firework-launch');
saveas(fig1, 'Results/5_Comparing_noise_music_and_speech/firework-launch.jpg');

[x2, fs2] = audioread('Sounds/music.wav');
fig2 = mySpectrogram(x2, fs2);
title('music');
saveas(fig2, 'Results/5_Comparing_noise_music_and_speech/music.jpg');

[x3, fs3] = audioread('Sounds/sp10.wav');
fig3 = mySpectrogram(x3, fs3);
title('sp10');
saveas(fig3, 'Results/5_Comparing_noise_music_and_speech/sp10.jpg');

[x4, fs4] = audioread('Sounds/sp10_white.wav');
fig4 = mySpectrogram(x4, fs4);
title('sp10_white');
saveas(fig4, 'Results/5_Comparing_noise_music_and_speech/sp10_white.jpg');