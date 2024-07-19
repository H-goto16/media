I = imread('cameraman.tif');            % 画像の読み込み
figure, imshow(I);                      % 画像表示
R_array = ([cos(pi/4) sin(pi/4) 0;
               -sin(pi / 4) cos(pi / 4) 0;
               0 0 1]);  % π/4回転の変換行列
            % (MATLABの仕様注意！）
            
R = affine2d(R_array);                  % 回転行列生成
J =     imwarp(I,R);                        % 変換処理 
figure, imshow(J);                      % 処理画像表示

M_array =  [-1 0 0; 0 1 0;0 0 1];     % Y軸で鏡影の変換行列（仕様注意！）
M = affine2d(M_array);                  % 鏡影行列生成               
K = imwarp(J,M);                        % 変換処理 
figure, imshow(K);                      % 処理画像表示

RM_array = R_array * M_array;              % 合成変換行列 (MATLABの仕様注意！）     
RM =    affine2d(RM_array);                % 合成変換
L =     imwarp(I,RM);                       % 変換処理 
figure, imshow(L);

