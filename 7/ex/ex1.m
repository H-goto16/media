I = imread("peacock.jpg");    % �摜�̓ǂݍ���
I = rgb2gray(I);    % RGB�摜 �� grayscale�摜
figure, imshow(I);    % �摜�\��
I = cast(I, "double");    % �ϐ��̌^��ύX
I = imgaussfilt(I, 2.0);    % �K�E�V�A���t�B���^��K�p

h = [0 -1 1];    % �����������t�B���^��`
Jx = imfilter(I, h); % �t�B���^h���摜�ɓK�p
figure, imshow(Jx, []);    % �����摜��\��
J = (Jx > 0) .* Jx;    % ���l��0�ɕϊ�
figure, imshow(J, []);    % �����摜��\��

Jy = imfilter(I, h'); % �t�B���^h���摜�ɓK�p
figure, imshow(Jy, []);    % �����摜��\��
J = (Jy > 0) .* Jy;    % ���l��0�ɕϊ�
figure, imshow(J, []);    % �����摜��\��

G = sqrt(Jx .* + Jy .* Jy);    % ���z�̑傫��
figure, imshow(G, []);    % �����摜��\��

T = atan(Jy ./ Jx);    % ���z�̕���
figure, imshow(T, []);    % �����摜��\��

