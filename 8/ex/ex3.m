I = imread('peacock.jpg');              % クジャク画像の読み込み
I = I(251:750, 1:500, :);    % 500x500の領域で切り出し
I = rgb2gray(I);                        % RGB画像をgrayscale画像へ
I = cast(I, 'double');                  % 変数の型を変更

ImgFFT = fft2(I);   % 高速フーリエ変換
imtool(ImgFFT);    % フーリエ係数の表示
ImgFFT = fftshift(ImgFFT);    % 周波数シフト
imtool(ImgFFT);    % フーリエ係数の表示

[height, width] = size(ImgFFT);    % 画像サイズの取得
cy = floor(height/2);    % フーリエ画像の重心y座標
cx = floor(width/2);    % フーリエ画像の重心x座標
Fsize = 20; % フィルタサイズ
filter2D = zeros(height, width);    % 全てゼロのheight×width配列
filter2D(cy - Fsize : cy+Fsize, cx-Fsize:cx+Fsize) = 1;    % 中心部分を0に⇒ローパスフィルタ
    
figure, imshow(filter2D, []);   % ローパスフィルタ表示

result = filter2D.* ImgFFT;    % ローパスパスフィルタの適用
imtool(result);    % フーリエ係数の表示

ImgIFFT = ifft2(result);    % 高速フーリエ逆変換
ImgIFFT = sqrt(ImgIFFT) .*conj(ImgIFFT);    % 複素共役
figure, imshow(ImgIFFT, []);    % 処理画像の表示




