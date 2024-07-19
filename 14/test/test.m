RGB = imread('peppers.png');
figure, imshow(RGB);

[H, W, C] = size(RGB);                  % 画像のサイズ取得
vectorRGB =  reshape(RGB, H*W, C);       % （高さ*幅）× RGBにサイズ変換    
vectorRGB =  cast(vectorRGB, "double");  % double型にcast
P = [100 71 148];                       % 紫色 R = 100, G = 71, B = 148
vectorRGB =  vectorRGB - P;           % 各画素においてPとの差
vectorRGB =  vectorRGB .* vectorRGB;           % 各画素において差の二乗
vectorRGB =  sqrt(sum(vectorRGB, 2));    % 各画素RGBの二乗値の合計

euqlid_img = reshape(vectorRGB, H, W);  % 高さ×幅にサイズ変換
imtool(euqlid_img);                     % ユークリッドの距離確認
Non_P = euqlid_img > 125   ;               % 背景（紫）を0, 野菜を1
figure, imshow(Non_P);

% 野菜領域の大まかな抽出と穴埋め
se = strel("disk", 5);                  
veg_img = imdilate(Non_P, se);
figure, imshow(veg_img);
veg_img = imfill(veg_img, 'holes');
figure, imshow(veg_img);
% 野菜領域のみ残す
cc = bwconncomp(veg_img);
stats = regionprops(cc, "Perimeter");
idx = find([stats.Area] >= 30 & [stats.MajorAxisLength] >= 20);
veg_img = ismember(labelmatrix(cc), idx);
figure, imshow(veg_img);
% 野菜領域（2値画像）と原画像の掛け算
out_img = uint8(veg_img).* RGB;
figure, imshow(out_img);


