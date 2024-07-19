I = imread("peacock.jpg");    % �N�W���N�摜�̓ǂݍ���
I = rgb2gray(I);    % RGB�摜��grayscale�摜��
I = cast(I, 'double');    % �ϐ��̌^��ύX
figure, imshow(I, []);    % �摜�\��

I =imgaussfilt(I, 1.2);    % �摜�̕�����
figure, imshow(I, []);    % �����摜��\��

h = [ 0 -1 0;    % �N�s���t�B���^�̐���
     -1 5 -1;
      0 -1 0];
J = imfilter(I, h);    % �t�B���^h���摜�ɓK�p
figure, imshow(J, []);    % �����摜��\��

k = 2.0;    % �N�s���̃p�����[�^
h = [0 -k 0;
     -k 1+4*k -k;
     0 -k 0];     % �N�s���t�B���^�̐���
disp(h);    % �N�s���t�B���^�̕\��
G = imfilter(I, h);    % �t�B���^h���摜�ɓK�p
figure, imshow(G, []);    % �����摜��\��




