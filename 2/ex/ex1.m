I = imread("cameraman.tif");    % 画像の読み込み
imshow(I, []);    % 画像表示， []：最大値を白，最小値を黒表示

tmp_max = -10000;    % 仮の最大値を設定
tmp_min =  10000;    % 仮の最小値を設定
[Height, Width] = size(I);    % 画像の大きさを取得

% ラスタ走査により最大値，最小値の更新
for y = 1:Height
    for x = 1:Width
        if I(y, x) > tmp_max
            tmp_max = I(y, x);
        end
        if I(y, x) < tmp_min
            tmp_min = I(y, x);
        end
    end
end

disp(tmp_max);    % 最大値の表示
disp(tmp_min);    % 最小値の表示





