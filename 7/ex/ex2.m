I = imread("peacock.jpg");    % 画像の読み込み
I = rgb2gray(I);    % RGB画像 ⇒ grayscale画像
figure, imshow(I);    % 画像表示
I = cast(I, "double");    % 変数の型を変更

% 縦方向平滑化⇒横方向微分 2回処理
hy = [1; 1; 1];    % 縦方向平滑化フィルタ定義                
Jy = imfilter(I, hy);    % フィルタhyを画像に適用
hx = [-1 0 1];    % 横方向差分フィルタ定義                
Jxy = imfilter(Jy, hx);    % フィルタhxを画像に適用
figure, imshow(Jxy, []);    % 処理画像を表示

% 縦方向平滑化⇒横方向微分 1回処理 
h = [-1 0 1;    % プリューウィットフィルタ定義
    -1 0 1;
    -1 0 1];
J = imfilter(I, h);    % フィルタhを画像に適用
figure, imshow(J, []);    % 処理画像を表示

% 2回処理と1回処理が一致することを確認
G = abs(Jxy - J);    % 差分画像生成
figure, imshow(G, []);    % 処理画像を表示



