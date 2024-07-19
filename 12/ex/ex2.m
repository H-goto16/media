I = imread('coins.png');            % ‰æ‘œ‚Ì“Ç‚İ‚İ
figure, imshow(I);                  % ‰æ‘œ‚Ì•\¦
thresh = graythresh(I);             % ”»•Ê•ªÍ–@‚É‚æ‚èè‡’l‚ğŒˆ’è
I = I > thresh*256;                 % thresh‚ğ—p‚¢‚Ä2’l‰æ‘œ‚Ì¶¬

I = I(55:155, 75:145);    % ‰æ‘œ‚ÌØ‚èo‚µ
I = imresize(I, 2.0);    % ‰æ‘œ‚ÌŠg‘å
figure, imshow(I);                  % ‰æ‘œ‚Ì•\¦

se = strel("disk", 5);    % ”¼Œa5i4.5j‚Ì‰~‚Ì\‘¢—v‘f

% closingˆ— –c’£^ûk 1‰ñ
J = imdilate(I, se);    % –c’£ˆ—
figure, imshow(J);                  % ‰æ‘œ‚Ì•\¦
K = imerode(J, se);    % ûkˆ—
figure, imshow(K);                  % ‰æ‘œ‚Ì•\¦

% closingˆ— –c’£^ûk 2‰ñ
J = imdilate(I, se);    % –c’£ˆ—
J = imdilate(J, se);    % –c’£ˆ—
figure, imshow(J);                  % ‰æ‘œ‚Ì•\¦
K = imerode(J, se);    % ûkˆ—
K = imerode(K, se);    % ûkˆ—
figure, imshow(K);                  % ‰æ‘œ‚Ì•\¦

