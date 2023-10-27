[x1, fs1] = audioread('Sounds/ohyeah1.m4a');
fig1 = mySpectrogram(x1, fs1);
title('ohyeah1');
saveas(fig1, 'Results/7_Comparing_different_intonations_and_different_voices/ohyeah1.jpg');

[x2, fs2] = audioread('Sounds/ohyeah2.m4a');
fig2 = mySpectrogram(x2, fs2);
title('ohyeah2');
saveas(fig2, 'Results/7_Comparing_different_intonations_and_different_voices/ohyeah2.jpg');

[x3, fs3] = audioread('Sounds/ohyeah3.m4a');
fig3 = mySpectrogram(x3, fs3);
title('ohyeah3');
saveas(fig3, 'Results/7_Comparing_different_intonations_and_different_voices/ohyeah3.jpg');