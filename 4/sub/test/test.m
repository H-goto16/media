I_RGB =             % ngc6543a.jpg画像（RGB画像）読み込み
figure,             % RGB画像の表示  
I_gray =            % RGB画像 ⇒ grayscale画像
I_gray = I_gray/2;                   % 画素値を2で割り暗く
figure,             % grayscale画像の表示   
figure,             % ヒストグラム

                    % 信号値範囲の取得

% 折れ線トーンカーブを用いて，見易く
J =     
figure, imshow(J);                   

% ガンマ補正を用いて，見易く
J =     
figure, imshow(J);

% ヒストグラム平坦化を用いて，暗いところが多く綺麗にならないことを確認
J =     
figure, imshow(J);   
