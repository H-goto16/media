I = imread('coins.png');            % 画像の読み込み
figure, imshow(I);                  % 画像の表示

% 穴埋め処理の確認
thresh = graythresh(I);             % 判別分析法により閾値を決定
J = I > thresh*256;                 % threshを用いて2値画像の生成
figure, imshow(J);                  % 画像の表示
se = strel("disk", 5);               % 半径5（4.5）の円の構造要素
K = imdilate(J, se);    % 膨張処理
figure, imshow(K);                  % 画像の表示

% ノイズ除去の確認
I = imnoise(I, "salt & pepper");    % ごま塩ノイズの追加
thresh = graythresh(I);             % 判別分析法により閾値を決定
J = I > thresh*256;                 % threshを用いて2値画像の生成
figure, imshow(J);                  % 画像の表示
se = strel("disk", 1);    % 半径1（1.5）の円の構造要素
K = imerode(J, se);    % 収縮処理
figure, imshow(K);                  % 画像の表示
