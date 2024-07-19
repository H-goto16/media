I = imread("eight.tif");    % コイン画像の読み込み
figure, imshow(I);    % 画像表示

J = imnoise(I, "salt & pepper", 0.02);    % ノイズ密度0.02のごま塩ノイズ付加
K = medfilt2(J, [3 3]);    % 3×3のメディアンフィルタ適用

imshowpair(J, K, "montage");    % 2画像を横並びで表示
