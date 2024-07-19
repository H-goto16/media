t = 0:2 * pi / 2000:4 * pi;    % 2π/2000刻みに0～4πまでサンプル点

for r = 0.1:0.2:4    % for 初期値:増加数:終了値
    plot(r * sin(t), r * cos(t), 'k-');% 半径rの同心円を描く
    hold on;% 同じ図に描く設定
end    
axis([-4, 4, -4, 4]);    % 図の軸設定
axis square;    % 図の形　⇒　正方形
saveas(gcf, 'circles.tif');    % 画像ファイルとして書出し

I = imread("circles.tif");    % 画像ファイルの読込み
J = imresize(I, 0.25, "Antialiasing",true);    % 平滑化して0.25倍に縮小
figure, imshow(J);    
J = imresize(I, 0.25, "Antialiasing",true);    % 平滑化せずに0.25倍に縮小
figure, imshow(J);
