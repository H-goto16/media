I = imread('pout.tif');    % pout.tif画像の読み込み
figure, imshow(I);         % 画像表示   
figure, histogram(I);      % ヒストグラム表示    

stretchlim(I)              % 信号値範囲の取得（ただし，1%飽和）
                           % 8bit画像（使用可能範囲 0⇒0, 255⇒1）

% 入力画像の51(=0.2*255)から153(=0.6*255)を0～255の範囲に引き延ばす
J = imadjust(I, [0.2 0.6], [0 1]);
figure, imshow(J);

% 入力画像をガンマ補正で見易く
J = imadjust(I, [0 1], [0 1], 0.5);
figure, imshow(J);

% 入力画像の76(=0.3*255)から177(=0.7*255)をガンマ補正で見易く
J = imadjust(I, [0.3 0.7], [ ], 0.5);
figure, imshow(J);

% ヒストグラム平坦化を用いて，見易く
J = histeq(I);
figure, histogram(J);
figure, imshow(J);

