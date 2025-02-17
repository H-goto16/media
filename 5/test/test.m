rgbI =  imread("flamingos.jpg");% 'flamingos.jpg'画像読み込み
figure, imshow(rgbI);                   % rgbIの表示
hsvI =  rgb2hsv(rgbI);                   % RGB画像をHSV画像に変換
[h,s,v] =   imsplit(hsvI);                % HSV各成分に分割

% 色相を0.2〜1まで0.2刻みで加算し，表示
for d = 0.2:0.2:1                         % for文で変数dを0.2刻みに変化
    th = mod(h+d, 1.0);                 % 色相にdを加算しmod関数で剰余を計算
    hsvI(:,:, 1) = th;                   % 色相成分を置換
    rgbI =  hsv2rgbuu(hsvI);               % RGB画像へ変換
    figure, imshow(rgbI);               % 画像の表示
end
    
% 明度を0.5〜1.5まで0.5刻みで乗算し，表示
for d = 0.5:0.5:1.5                          % for文で変数dを0.5刻みに変化
    tv = v * d;                            % 明度にdを乗算
    tv = (tv > 1.0) + (tv <= 1.0) .* tv; % 明度は1以下に！
    hsvI(:,:, 3) = tv;                    % 明度成分を置換
    rgbI =  hsv2rgb(hsvI);                % RGB画像へ変換
    figure, imshow(rgbI);                % 画像の表示
end    
