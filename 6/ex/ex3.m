I = imread("eight.tif");    % �R�C���摜�̓ǂݍ���
figure, imshow(I);    % �摜�\��

J = imnoise(I, "salt & pepper", 0.02);    % �m�C�Y���x0.02�̂��܉��m�C�Y�t��
K = medfilt2(J, [3 3]);    % 3�~3�̃��f�B�A���t�B���^�K�p

imshowpair(J, K, "montage");    % 2�摜�������тŕ\��
