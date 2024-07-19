I = imread("peacock.jpg");    % 画像の読み込み
I = rgb2gray(I);    % RGB画像 ⇒ grayscale画像
figure, imshow(I);    % 画像表示
I = cast(I, "double");    % 変数の型を変更
I = imgaussfilt(I, 2.0);    % ガウシアンフィルタを適用

h = [0 -1 1];    % 横方向微分フィルタ定義
Jx = imfilter(I, h); % フィルタhを画像に適用
figure, imshow(Jx, []);    % 処理画像を表示
J = (Jx > 0) .* Jx;    % 負値を0に変換
figure, imshow(J, []);    % 処理画像を表示

Jy = imfilter(I, h'); % フィルタhを画像に適用
figure, imshow(Jy, []);    % 処理画像を表示
J = (Jy > 0) .* Jy;    % 負値を0に変換
figure, imshow(J, []);    % 処理画像を表示

G = sqrt(Jx .* + Jy .* Jy);    % 勾配の大きさ
figure, imshow(G, []);    % 処理画像を表示

T = atan(Jy ./ Jx);    % 勾配の方向
figure, imshow(T, []);    % 処理画像を表示

