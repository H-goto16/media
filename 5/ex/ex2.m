I = imread('greens.jpg');    % 画像の読み込み
figure, imshow(I);    % 画像の表示

[h, w, c] = size(I);    % 配列の高さ，幅，チャネル数の取得
figure, histogram(I(:,:,1));    % R成分のヒストグラム
figure, histogram(I(:,:,2));    % G成分のヒストグラム
figure, histogram(I(:,:,3));    % B成分のヒストグラム

J = I;    % 画像のコピー                                            
J(:,:,1) = imadjust(I(:,:,1), [0.0 0.5], [], 1.5);    % R成分をガンマ補正
figure, histogram(J(:,:,1));    % R成分のヒストグラム
figure, imshow(J);    % 画像の表示

J = I;    % 画像のコピー   
J(:,:,1) = imadjust(I(:,:,2), [0.0 0.5], [0 1]);    % G成分を折れ線トーンカーブ
figure, histogram(J(:,:,2));    % G成分のヒストグラム
figure, imshow(J);    % 画像の表示

J = I;    % 画像のコピー   
J(:,:,1) = histeq(I(:,:,3));    % B成分をヒストグラム平坦化
figure, histogram(J(:,:,3));    % B成分のヒストグラム
figure, imshow(J);    % 画像のコピー 