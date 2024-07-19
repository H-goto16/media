I = imread("peacock.jpg");    % 画像の読み込み
I = rgb2gray(I);    % RGB画像 ⇒ grayscale画像
figure, imshow(I);    % 画像表示

h = [1/3 1/3 1/3];    % 1×3平滑化フィルタ定義（面倒）
J = imfilter(I, h);    % フィルタhを画像に適用
figure, imshow(J);    % 処理画像を表示

h = ones(1, 3);    % 全ての要素が1の1×3フィルタ定義
h = h / 3;    % 全ての要素を3で割る　⇒　生成
J = imfilter(J, h);    % フィルタhを画像に適用
figure, imshow(J);    % 処理画像を表示

h = ones(1, 7);    % 全ての要素が1の1×7フィルタ定義
h = h / 7;    % 全ての要素を7で割る　⇒　生成
J = imfilter(J, h);    % フィルタhを画像に適用
figure, imshow(J);    % 処理画像を表示

h = h';    % 転置行列 ⇒ 生成 7×1フィルタ生成
J = imfilter(I , h);    % フィルタhを画像に適用
figure, imshow(J);    % 処理画像を表示

