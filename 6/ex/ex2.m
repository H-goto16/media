I = imread('peacock.jpg');      % 画像の読み込み
I = rgb2gray(I);                % RGB画像 ⇒ grayscale画像
figure, imshow(I);              % 画像表示

h = [1/9 1/9 1/9;
     1/9 1/9 1/9;
     1/9 1/9 1/9];    % 3×3平滑化フィルタ定義（面倒）
    
    
J = imfilter(I, h);    % フィルタhを画像に適用
figure, imshow(J);    % 処理画像を表示

h = ones(7, 7);    % 全ての要素が1の7×7フィルタ定義
h = h / (7 * 7);    % 全ての要素を全要素数で割る
J = imfilter(J, h);    % フィルタhを画像に適用
figure, imshow(J);    % 処理画像を表示



