I = imread('coins.png');            % ζΜΗέέ
figure, imshow(I);                  % ζΜ\¦
thresh = graythresh(I);             % »ΚͺΝ@Ιζθθlπθ
I = I > thresh*256;                 % threshπp’Δ2lζΜΆ¬

I = I(55:155, 75:145);    % ζΜΨθo΅
I = imresize(I, 2.0);    % ζΜgε
figure, imshow(I);                  % ζΜ\¦

se = strel("disk", 5);    % Όa5i4.5jΜ~Μ\’vf

% closing c£^ϋk 1ρ
J = imdilate(I, se);    % c£
figure, imshow(J);                  % ζΜ\¦
K = imerode(J, se);    % ϋk
figure, imshow(K);                  % ζΜ\¦

% closing c£^ϋk 2ρ
J = imdilate(I, se);    % c£
J = imdilate(J, se);    % c£
figure, imshow(J);                  % ζΜ\¦
K = imerode(J, se);    % ϋk
K = imerode(K, se);    % ϋk
figure, imshow(K);                  % ζΜ\¦

