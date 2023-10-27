[x1, fs1] = audioread('Sounds/male_ohyeah_1.mp3');
fig1 = mySpectrogram(x1, fs1);
title('fale ohyeah 1');
saveas(fig1, 'Results/7_Comparing_different_intonations_and_different_voices/male_ohyeah_1.jpg');

[x2, fs2] = audioread('Sounds/male_ohyeah_2.mp3');
fig2 = mySpectrogram(x2, fs2);
title('male ohyeah 2');
saveas(fig2, 'Results/7_Comparing_different_intonations_and_different_voices/male_ohyeah_2.jpg');

[x3, fs3] = audioread('Sounds/female_ohyeah_1.mp3');
fig3 = mySpectrogram(x3, fs3);
title('female ohyeah 1');
saveas(fig3, 'Results/7_Comparing_different_intonations_and_different_voices/female_ohyeah_1.jpg');

[x4, fs4] = audioread('Sounds/female_ohyeah_2.mp3');
fig4 = mySpectrogram(x4, fs4);
title('female ohyeah 2');
saveas(fig4, 'Results/7_Comparing_different_intonations_and_different_voices/female_ohyeah_2.jpg');