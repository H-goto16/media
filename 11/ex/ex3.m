I  = imread('rice.png');                    % 画像の読み込み
figure, imshow(I);                          % 画像の表示
BW = I > 130;     % 2値化処理
figure, imshow(BW);                         % 画像の表示

cc = bwconncomp(BW);    % 連結成分の検出
stats = regionprops(cc, "Area", "MajorAxisLength");         % 形状特徴抽出
       % 面積，主軸（長軸）の長さ
idx = find([stats.Area] >= 30 & [stats.MajorAxisLength] >= 20);            % 面積30以上，主軸20以上の
BW2 = ismember(labelmatrix(cc), idx);        % 連結成分を抽出
         % 上記条件を満たす成分を登録
figure, imshow(BW2);                        % 画像の表示

