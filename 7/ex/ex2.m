I = imread("peacock.jpg");    % �摜�̓ǂݍ���
I = rgb2gray(I);    % RGB�摜 �� grayscale�摜
figure, imshow(I);    % �摜�\��
I = cast(I, "double");    % �ϐ��̌^��ύX

% �c�����������ˉ��������� 2�񏈗�
hy = [1; 1; 1];    % �c�����������t�B���^��`                
Jy = imfilter(I, hy);    % �t�B���^hy���摜�ɓK�p
hx = [-1 0 1];    % �����������t�B���^��`                
Jxy = imfilter(Jy, hx);    % �t�B���^hx���摜�ɓK�p
figure, imshow(Jxy, []);    % �����摜��\��

% �c�����������ˉ��������� 1�񏈗� 
h = [-1 0 1;    % �v�����[�E�B�b�g�t�B���^��`
    -1 0 1;
    -1 0 1];
J = imfilter(I, h);    % �t�B���^h���摜�ɓK�p
figure, imshow(J, []);    % �����摜��\��

% 2�񏈗���1�񏈗�����v���邱�Ƃ��m�F
G = abs(Jxy - J);    % �����摜����
figure, imshow(G, []);    % �����摜��\��



