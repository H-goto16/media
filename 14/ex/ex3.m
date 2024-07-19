RGB = imread('peppers.png');
figure, imshow(RGB);

[H, W, C] = size(RGB);                  % 画像のサイズ取得
vectorRGB = reshape(RGB, H * W, C);    % （高さ*幅）× RGBにサイズ変換    
vectorRGB = cast(vectorRGB, 'double');  % double型にcast

R = [255.0 0 0];    % 赤色 R = 255, G = 0, B = 0
vectorRGB = vectorRGB -R;    % 各画素においてRとの差
vectorRGB = vectorRGB .* vectorRGB;   % 各画素において差の二乗
vectorRGB = sqrt(sum(vectorRGB, 2));    % 各画素RGBの二乗値の合計

euqlid_img = reshape(vectorRGB, H ,W);   % 高さ×幅にサイズ変換
imtool(euqlid_img);    % ユークリッドの距離確認

likelihood_R = euqlid_img < 125; % 距離が閾値未満であれば,1
figure, imshow(likelihood_R);




