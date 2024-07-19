I = imread("peacock.jpg");     % peacock.jpg画像の読み込み
I = rgb2gray(I);     % RGB画像 ⇒ grayscale画像
figure, imshow(I);        % 画像表示
I = cast(I, "double")    % 変数の型をdouble型に変更

% 縦方向2次微分+横方向2次微分
hy = [1; -2; 1];   % 縦方向2次微分フィルタ定義  
Jy = imfilter(I, hy);   % フィルタhyを画像に適用
hx =  [1 -2 1];  % 横方向2次微分フィルタ定義   
Jx = imfilter(I, hx);   % フィルタhxを画像に適用
Jxy = Jy + Jx;  % 各方向の2次微分画像を加算
figure, imshow(Jxy, [])        % 処理画像を表示

% 2次微分フィルタ
h = [0 1 0; % ラプラシアンフィルタ定義
     1 -4 1;   
     0 1 0];
J = imfilter(I, h);    % フィルタhを画像に適用
figure, imshow(J, []);        % 処理画像を表示

% 上記2処理画像が一致することを確認
G = abs(Jxy - J);    % 差分画像生成
figure, imshow(G, []);        % 処理画像を表示



