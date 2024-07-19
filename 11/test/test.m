I = imread('coins.png');                    % 画像の読み込み
figure, imshow(I);                          % 画像の表示

thresh =  graythresh(I);   % 判別分析で閾値を決定
I = I > thresh*256-30;                      % threshを用いて2値画像の生成
figure, imshow(I);                          % 画像の表示

cc = bwconncomp(I);   % 連結成分の検出
     % 連結成分の特徴量抽出

% 特徴量がある条件を満たす連結成分を抽出 
disp(stats)
stats = regionprops(cc, "Perimeter");% 周囲長が40画素以上の連結成分だけ残す
idx = find([stats.Perimeter] <= 170);  
J = ismember(labelmatrix(cc), idx); % 上記条件を満たす成分を登録
figure, imshow(J);                          % 画像の表示


