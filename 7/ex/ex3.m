I = imread("peacock.jpg");    % �摜�̓ǂݍ���
I = rgb2gray(I);    % RGB�摜 �� grayscale�摜
figure, imshow(I);    % �摜�\��
I = cast(I, "double");    % �ϐ��̌^��ύX

    
h = fspecial("log", 7, 0.0001);    % �t�B���^h���摜�ɓK�p
J =imfilter(I, h);    % �����摜��\��
figure, imshow(J, []);    % LOG�t�B���^�Ɋ�Â��G�b�W���o
E = edge(I, "log", 0.0001);    % �����摜��\��
figure, imshow(E, []);

h = fspecial("log", 11, 2.4);
J =imfilter(I, h);    % �����摜��\��
figure, imshow(J, []);    % LOG�t�B���^�Ɋ�Â��G�b�W���o
E = edge(I, "log", 2.4);    % �����摜��\��
figure, imshow(E, []);
