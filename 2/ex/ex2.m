I = imread("cameraman.tif");    % 画像の読み込み
imshow(I, []);     % 画像表示，[]：最大値を白，最小値を黒表示

% サブルーチンにより最大値，最小値を取得
max_value = max(I(:));    % :は全ての要素を示す
min_value = max(I(:));    % ここでは，全てを対象
disp(max_value);    % 最大値の表示
disp(min_value);    % 最小値の表示





