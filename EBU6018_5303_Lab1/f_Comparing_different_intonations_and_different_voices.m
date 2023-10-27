[x1, fs1] = audioread('Sounds/liu_1.m4a');
fig1 = mySpectrogram(x1, fs1);
title('liu 1');
saveas(fig1, 'Results/7_Comparing_different_intonations_and_different_voices/liu_1.jpg');

[x2, fs2] = audioread('Sounds/liu_2.m4a');
fig2 = mySpectrogram(x2, fs2);
title('liu 2');
saveas(fig2, 'Results/7_Comparing_different_intonations_and_different_voices/liu_2.jpg');

[x3, fs3] = audioread('Sounds/liu_3.m4a');
fig3 = mySpectrogram(x3, fs3);
title('liu 3');
saveas(fig3, 'Results/7_Comparing_different_intonations_and_different_voices/liu_3.jpg');

[x4, fs4] = audioread('Sounds/liu_4.m4a');
fig4 = mySpectrogram(x4, fs4);
title('liu 4');
saveas(fig4, 'Results/7_Comparing_different_intonations_and_different_voices/liu_4.jpg');