I = imread('coins.png');            % 画像の読み込み
figure, imshow(I);                  % 画像の表示
bw = imbinarize(I);    % 判別分析法による2値画像の生成
figure, imshow(bw);                 % 画像の表示

bw = bwareaopen(bw, 30);    % 面積が30未満の領域削除
figure, imshow(bw);                 % 画像の表示
bw = imfill(bw, "holes");   % 領域内の穴埋め
figure, imshow(bw);                 % 画像の表示

[B, L] = bwboundaries(bw, "noholes");    % 境界抽出
figure, 
imshow(label2rgb(L, @jet, [.5 .5 .5]));     % 領域（ラベル）ごとに色付け

