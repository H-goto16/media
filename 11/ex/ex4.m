BW = imread('text.png');                    % 画像の読み込み
imshow(BW);
cc = bwconncomp(BW);% 連結成分の検出

stats = regionprops(cc, "Perimeter");% 周囲長が40画素以上の連結成分だけ残す
idx = find([stats.Perimeter] >= 40);           % 形状特徴抽出
BW2 = ismember(labelmatrix(cc), idx);           % 周囲長が40以上の連結成分を抽出
         % 上記条件を満たす成分を登録
figure, imshow(BW2);                        % 画像の表示

stats = regionprops(cc, "EulerNumber");% 周囲長が40画素以上の連結成分だけ残す
idx = find([stats.EulerNumber] == 0);           % 形状特徴抽出
BW2 = ismember(labelmatrix(cc), idx);     
figure, imshow(BW2);                        % 画像の表示
