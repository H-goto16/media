rgbI = imread('peppers.png');    % 画像の読み込み
figure, imshow(rgbI);    % 画像の表示
[r, g, b] = imsplit(rgbI);% RGB成分に分割
figure, montage({r,g,b}, 'Size',[1 3]);    % 各成分をモンタージュ表示

hsvI = rgb2hsv(rgbI);    % RGB画像をHSV画像に変換
[h, s, v] = imsplit(hsv1);    % HSV成分に分割
figure, montage({r,g,b}, 'Size',[1 3]);    % 各成分をモンタージュ表示

s = s * 2.0;    % 彩度を2.0倍へ
s = (s > 1.0) + (s <= 1.0) .* s;    % 彩度が1.0を超えるものを1へ
    % 彩度成分を置換
    % RGB画像へ変換
    % 画像の表示
