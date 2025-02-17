I = zeros(50,50);
I(10:20, 20:40) = 1;
I(15, 25:35)    = 0;
I(13:17, 30)    = 0;
I(18, 40:45)    = 1;
I(31, 11)       = 1;
I(41:42, 21:22) = 1;
I = imresize(I, 3.0, 'nearest');    % ζΜgε
figure, imshow(I);                  % ζΜ\¦

se = strel("disk", 3);    % \’vf

% black tophat
K = imdilate(I,se);    % c£
J = imerode(K, se);    % ϋk
L = J - I;    % ·ͺ
figure, imshow(L);                  % ζΜ\¦

% white tophat
K = imerode(I,se);    % ϋk
J = imdilate(K, se);    % c£
L = I - J;    % ·ͺ
figure, imshow(L);                  % ζΜ\¦
