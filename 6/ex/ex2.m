I = imread('peacock.jpg');      % �摜�̓ǂݍ���
I = rgb2gray(I);                % RGB�摜 �� grayscale�摜
figure, imshow(I);              % �摜�\��

h = [1/9 1/9 1/9;
     1/9 1/9 1/9;
     1/9 1/9 1/9];    % 3�~3�������t�B���^��`�i�ʓ|�j
    
    
J = imfilter(I, h);    % �t�B���^h���摜�ɓK�p
figure, imshow(J);    % �����摜��\��

h = ones(7, 7);    % �S�Ă̗v�f��1��7�~7�t�B���^��`
h = h / (7 * 7);    % �S�Ă̗v�f��S�v�f���Ŋ���
J = imfilter(J, h);    % �t�B���^h���摜�ɓK�p
figure, imshow(J);    % �����摜��\��



