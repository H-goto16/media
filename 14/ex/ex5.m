I  = imread('circuit.tif');                 % 画像の読み込み
rotI = imrotate(I,33,'crop');               % 画像の回転
BW = edge(rotI); % cannyのエッジ検出
figure, imshow(BW);

[H,T,R] = hough(BW);  % エッジ画像をハフ変換
figure, imshow( ...                         % ρθ空間の投票結果表示
    H,[],'XData',T,'YData',R,...
    'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;

P = houghpeaks(H , 5);     % 投票数が多い5点を取得
        
x = T(P(:,2)); y = R(P(:,1));
plot(x,y,'s','color','white');

lines = houghlines(BW,T,R,P, ...    % ハフ変換に基づく線分抽出
    'FillGap',5,'MinLength',7);     % FillGap：同じハフ変換ビンに    
figure, imshow(rotI), hold on       % 関連付けられている 2 つの線分間の距離 

for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');   
end
