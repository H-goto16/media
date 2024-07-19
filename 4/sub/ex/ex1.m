RGB = imread('peppers.png');    % 画像の読み込み
figure, imshow(RGB);            % 画像表示        

figure, histogram(RGB(:,:,1));    % R成分のヒストグラム
figure, histogram(RGB(:,:,2));    % G成分のヒストグラム
figure, histogram(RGB(:,:,3));    % B成分のヒストグラム

I_gray = rgb2gray(RGB);           % RGB画像 ⇒ grayscale画像
figure, imshow(I_gray);           % 画像表示   
figure, histogram(I_gray);        % ヒストグラム

min(I_gray(:))            % 最小値の取得
max(I_gray(:))            % 最大値の取得
mean(I_gray(:))           % 平均値の取得
var(double(I_gray(:)))    % 分散の取得
std(double(I_gray(:)))    % 標準偏差の取得
median(I_gray(:))         % 中央値の取得
mode(I_gray(:))           % 最頻値の取得


