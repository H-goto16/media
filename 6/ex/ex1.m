I = imread("peacock.jpg");    % �摜�̓ǂݍ���
I = rgb2gray(I);    % RGB�摜 �� grayscale�摜
figure, imshow(I);    % �摜�\��

h = [1/3 1/3 1/3];    % 1�~3�������t�B���^��`�i�ʓ|�j
J = imfilter(I, h);    % �t�B���^h���摜�ɓK�p
figure, imshow(J);    % �����摜��\��

h = ones(1, 3);    % �S�Ă̗v�f��1��1�~3�t�B���^��`
h = h / 3;    % �S�Ă̗v�f��3�Ŋ���@�ˁ@����
J = imfilter(J, h);    % �t�B���^h���摜�ɓK�p
figure, imshow(J);    % �����摜��\��

h = ones(1, 7);    % �S�Ă̗v�f��1��1�~7�t�B���^��`
h = h / 7;    % �S�Ă̗v�f��7�Ŋ���@�ˁ@����
J = imfilter(J, h);    % �t�B���^h���摜�ɓK�p
figure, imshow(J);    % �����摜��\��

h = h';    % �]�u�s�� �� ���� 7�~1�t�B���^����
J = imfilter(I , h);    % �t�B���^h���摜�ɓK�p
figure, imshow(J);    % �����摜��\��

