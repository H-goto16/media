I = imread('coins.png');            % ‰æ‘œ‚Ì“Ç‚İ‚İ
I = imnoise(I, 'salt & pepper');    % ‚²‚Ü‰–ƒmƒCƒY
figure, imshow(I);                  % ‰æ‘œ‚Ì•\¦

thresh = graythresh(I);             % ”»•Ê•ªÍ–@‚É‚æ‚èè‡’l‚ğŒˆ’è
I = I > thresh*256;                 % thresh‚ğ—p‚¢‚Ä2’l‰æ‘œ‚Ì¶¬
figure, imshow(I);                  % ‰æ‘œ‚Ì•\¦

se = strel("disk", 1);    % ”¼Œa1i1.5j‚Ì‰~‚Ì\‘¢—v‘f

% openingˆ— ûk^–c’£ 1‰ñ
J = imerode(I, se);    % ûkˆ—
figure, imshow(J);                  % ‰æ‘œ‚Ì•\¦
K = imdilate(J, se);    % –c’£ˆ—
figure, imshow(K);                  % ‰æ‘œ‚Ì•\¦

% openingˆ— –c’£^ûk 2‰ñ
J = imerode(I, se);    % ûkˆ—
J = imerode(J, se);    % ûkˆ—
figure, imshow(J);                  % ‰æ‘œ‚Ì•\¦
K = imdilate(J, se);    % –c’£ˆ—
K = imdilate(K, se);    % –c’£ˆ—
figure, imshow(K);                  % ‰æ‘œ‚Ì•\¦
