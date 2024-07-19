I = imread("peacock.jpg");    % クジャク画像の読み込み
I = rgb2gray(I);    % RGB画像をgrayscale画像へ
I = cast(I, 'double');    % 変数の型を変更
figure, imshow(I, []);    % 画像表示

I =imgaussfilt(I, 1.2);    % 画像の平滑化
figure, imshow(I, []);    % 処理画像を表示

h = [ 0 -1 0;    % 鮮鋭化フィルタの生成
     -1 5 -1;
      0 -1 0];
J = imfilter(I, h);    % フィルタhを画像に適用
figure, imshow(J, []);    % 処理画像を表示

k = 2.0;    % 鮮鋭化のパラメータ
h = [0 -k 0;
     -k 1+4*k -k;
     0 -k 0];     % 鮮鋭化フィルタの生成
disp(h);    % 鮮鋭化フィルタの表示
G = imfilter(I, h);    % フィルタhを画像に適用
figure, imshow(G, []);    % 処理画像を表示




