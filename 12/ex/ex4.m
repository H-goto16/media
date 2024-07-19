I = zeros(50,50);
I(10:20, 20:40) = 1;
I(15, 25:35)    = 0;
I(13:17, 30)    = 0;
I(18, 40:45)    = 1;
I(31, 11)       = 1;
I(41:42, 21:22) = 1;
I = imresize(I, 3.0, 'nearest');    % ‰æ‘œ‚ÌŠg‘å
figure, imshow(I);                  % ‰æ‘œ‚Ì•\¦

se = strel("disk", 3);    % \‘¢—v‘f

% black tophatˆ—
K = imdilate(I,se);    % –c’£ˆ—
J = imerode(K, se);    % ûkˆ—
L = J - I;    % ·•ªˆ—
figure, imshow(L);                  % ‰æ‘œ‚Ì•\¦

% white tophatˆ—
K = imerode(I,se);    % ûkˆ—
J = imdilate(K, se);    % –c’£ˆ—
L = I - J;    % ·•ªˆ—
figure, imshow(L);                  % ‰æ‘œ‚Ì•\¦
