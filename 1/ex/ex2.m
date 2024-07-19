t = 0:1 / 3200:1; % 1秒を1/32000に分割
a = 1;            % 振幅
f = 440;          % 周波数
Y440 = a * sin (2 * pi() * f * t);    % 正弦波の生成
Y880 = a * sin (2 * pi() * 2 * f * t);     % 正弦波の生成

plot(t, Y440, 'r-'); % 正弦波をプロット
hold on      % 正弦波をプロット
plot(t, Y880, 'b-'); 
xlabel('time','FontSize',12);           % X軸ラベルの設定
xlim([0 0.01]);                         % X軸ラベルの範囲
ylabel('amplitude','FontSize',12);      % Y軸ラベルの設定
ylim([-1.2 1.2]);                       % Y軸ラベルの範囲

Y = horzcat(Y440, Y880);    % 時間軸方向に結合
sound(Y, 32000);% 音を鳴らす