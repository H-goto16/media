I_RGB = imread('ngc6543a.jpg');     % 画像データの読み込み
I = rgb2gray(I_RGB);    % カラー画像をグレイスケール画像へ変換
figure, imshow(I);                  % 画像の表示

figure, histogram(I);    % ヒストグラムの生成
thresh = 30;    % 手動で閾値設定
J = I > thresh;    % 2値化処理
figure, imshow(J);                  % 画像の表示

N = histcounts(I, 256);    % ヒストグラムの生成
p_title = 50000;    % 面積50000画素
cnt = 0;    % 面積数の変数
num = 255;    % 頻度数
        
while cnt < p_title    % 高い方から頻度を積算
    cnt = cnt + N(num);    % 積算する信号値を1つ下げる
    num = num - 1;
    thresh = num;
end

J = I > thresh;% 2値化処理
figure, imshow(J);                  % 画像の表示

thresh = graythresh(I);    % 判別分析で閾値決定（0～1で正規化）
J = I > thresh * 256;    % 2値化処理
figure, imshow(J);                  % 画像の表示
 




