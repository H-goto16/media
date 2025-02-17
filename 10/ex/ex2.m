I = imread('cameraman.tif');                    % 画像の読み込み
figure, imshow(I);                              % 画像表示

E_array = [ 1 0 0;    % 平行移動行列
            0 1 0;
            10 20 1];
    
E = affine2d(E_array);    % ユークリッド変換
J = imwarp(I, E);    % 変換処置 
figure, imshow(J);

J = imtranslate(I, [10 20]);    % 平行移動
figure, imshow(J);


