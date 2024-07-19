I = imread('pout.tif');    % 画像の読み込み
figure, imshow(I);         % 画像表示

% 濃淡反転
max_v = max(I(:));         % 配列Iの最大値取得
J = max_v - I;    % 最大値-配列Iで濃淡反転
figure, imshow(J);    % 画像表示

% ポスタリゼーション
num_level = 10;    % 量子化レベルの設定
range =  fix(max_v / num_level);    % 各binの範囲取得 
I = cast(I, 'double');    % 小数点以下切り捨てのため，cast
range = cast(range, 'double');    % 同じ型で割算するため，cast
J = floor(I / range);    % 画素値を範囲で割算，小数点以下切り捨て
J = J * range;    % 元に近い信号値に戻す
figure, imshow(J, []);    % 画像表示（[]：最小値を黒，最大値を白）
figure, histogram(J);    % ヒストグラム表示

% 2値化
thresh_level = 100;    % 閾値の設定
J = I > thresh_level;    % 条件式
figure, imshow(J, []);    % 画像表示（[]：最小値を黒，最大値を白）