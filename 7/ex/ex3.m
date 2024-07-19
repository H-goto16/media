I = imread("peacock.jpg");    % 画像の読み込み
I = rgb2gray(I);    % RGB画像 ⇒ grayscale画像
figure, imshow(I);    % 画像表示
I = cast(I, "double");    % 変数の型を変更

    
h = fspecial("log", 7, 0.0001);    % フィルタhを画像に適用
J =imfilter(I, h);    % 処理画像を表示
figure, imshow(J, []);    % LOGフィルタに基づくエッジ抽出
E = edge(I, "log", 0.0001);    % 処理画像を表示
figure, imshow(E, []);

h = fspecial("log", 11, 2.4);
J =imfilter(I, h);    % 処理画像を表示
figure, imshow(J, []);    % LOGフィルタに基づくエッジ抽出
E = edge(I, "log", 2.4);    % 処理画像を表示
figure, imshow(E, []);
