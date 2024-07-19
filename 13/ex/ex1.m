I = imread("bag.png");
figure, imshow(I);

[height, ~] = size(I);    % 画像のサイズ取得
J = I(1:round(height/3));    % 上から1/3をコピー
K = I(2*round(height/3) + 1: end, : );    % 下から1/3をコピー
figure, imshow(J);
figure, imshow(K);

offsets = [0 1; -1 1; -1 0; -1 -1];    % 0, 45, 90, 135度

% 生起行列
[glcms, ~] = graycomatrix(J, "Offset", offsets, "Symmetric",true);                
stats = graycoprops(glcms, {"Contrast", "Correlation", "Energy", "Homogeneity"});    % テクスチャ特徴量取得

disp(['Contrast:' num2str(max(stats.Contrast))]);
disp(['Correlation:' num2str(max(stats.Correlation))]);
disp(['Energy:' num2str(max(stats.Energy))]);
disp(['Homogeneity:' num2str(max(stats.Homogeneity))]);


