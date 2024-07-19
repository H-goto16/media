RGB = imread("hestain.png");    % hestain.png画像の読み込み
imshow(RGB);                    % 画像表示
[H, W, C] = size(RGB);          % サイズ取得

R_img = RGB(:,:,1);    % R成分の取得
figure, imshow(R_img);    % R成分画像の表示

