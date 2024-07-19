I = imread("peacock.jpg");    % 画像の読み込み
I = rgb2gray(I);   % RGB画像 ⇒ grayscale画像
figure, imshow(I);              % 画像表示

I = imnoise(I, "salt & pepper", 0.02);     % ノイズ密度0.02のごま塩ノイズ付加
figure, imshow(I);                      % 処理画像を表示
J = medfilt2(I, [5 5]);    % 5×5のメディアンフィルタ適用
figure, imshow(J);                      % 処理画像を表示

h = (1/16)*[1 2 1;    % 3×3の加重平均化フィルタ定義
            2 4 2;    
            1 2 1];              
J = imfilter(I, h);    % フィルタhを画像に適用
figure, imshow(J);              % 処理画像を表示

Iblur = imgaussfilt(I, 2.0);        % σ=2.0のガウシアンフィルタ適用
figure, imshow(Iblur);          % 処理画像を表示

% k最近隣平滑化フィルタ
Iguided = imguidedfilter(I, "NeighborhoodSize", [5 5]);   % 5×5の領域
figure, imshow(Iguided);           % 処理画像を表示