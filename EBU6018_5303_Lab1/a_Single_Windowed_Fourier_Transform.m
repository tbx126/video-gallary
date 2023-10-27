% 读取音频文件
s = audioread('Sounds/music.wav');

% 创建保存结果的文件夹，如果不存在的话
folderName = 'Results/3._Single_Windowed_Fourier_Transform';
if ~exist(folderName, 'dir')
    mkdir(folderName);
end

% 固定窗口位置并改变窗口长度
figure(1)
y1 = wft(s,10000,54);
y2 = wft(s,10000,256);
y3 = wft(s,10000,1024);
subplot(3,1,1); plot(abs(y1)); title('n=54,t=10000'); 
subplot(3,1,2); plot(abs(y2)); title('n=256,t=10000'); 
subplot(3,1,3); plot(abs(y3)); title('n=1024,t=10000'); 
% 保存图像
saveas(gcf, fullfile(folderName, 'n_variable_t_fixed.png'))

% 固定窗口长度并改变窗口位置
figure(2)
z1 = wft(s,10000,256);
z2 = wft(s,20000,256);
z3 = wft(s,25000,256);
subplot(3,1,1); plot(abs(z1)); title('n=256,t=1000'); 
subplot(3,1,2); plot(abs(z2)); title('n=256,t=20000'); 
subplot(3,1,3); plot(abs(z3)); title('n=256,t=25000'); 
% 保存图像
saveas(gcf, fullfile(folderName, 'n_fixed_t_variable.png'))

% 使用 log 绘图
figure(3)
subplot(3,1,1); plot(abs(log(y1))); title('n=54,t=10000'); 
subplot(3,1,2); plot(abs(log(y2))); title('n=256,t=10000'); 
subplot(3,1,3); plot(abs(log(y3))); title('n=1024,t=10000');
% 保存图像
saveas(gcf, fullfile(folderName, 'n_variable_t_fixed_log.png'))

% 使用 log 绘图
figure(4)
subplot(3,1,1); plot(abs(log(z1))); title('n=256,t=1000'); 
subplot(3,1,2); plot(abs(log(z2))); title('n=256,t=20000'); 
subplot(3,1,3); plot(abs(log(z3))); title('n=256,t=25000'); 
% 保存图像
saveas(gcf, fullfile(folderName, 'n_fixed_t_variable_log.png'))