RGB = imread("peacock.jpg");      % peacock.jpg画像の読み込み
figure, imshow(RGB);    % 画像表示

R_img = RGB(:,:,1);    % R成分の取得
figure, imshow(R_img);    % R成分画像の表示
R_max = max(R_img(:));    % R成分の最大値取得
R_min = min(R_img(:));     % R成分の最小値取得
disp(R_max);            % R成分の最大値表示
disp(R_min);            % R成分の最小値表示

G_img = RGB(:,:,2);    % G成分の取得
figure, imshow(G_img);     % G成分画像の表示
disp(max(G_img(:)));           % G成分の最大値表示（取得省略）
disp(min(G_img(:)));            % G成分の最小値表示（取得省略）

B_img = RGB(:,:,3);     % B成分の取得
figure, imshow(B_img);     % B成分画像の表示

