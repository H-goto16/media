I = imread("peacock.jpg");     % peacock.jpg�摜�̓ǂݍ���
I = rgb2gray(I);     % RGB�摜 �� grayscale�摜
figure, imshow(I);        % �摜�\��
I = cast(I, "double")    % �ϐ��̌^��double�^�ɕύX

% �c����2������+������2������
hy = [1; -2; 1];   % �c����2�������t�B���^��`  
Jy = imfilter(I, hy);   % �t�B���^hy���摜�ɓK�p
hx =  [1 -2 1];  % ������2�������t�B���^��`   
Jx = imfilter(I, hx);   % �t�B���^hx���摜�ɓK�p
Jxy = Jy + Jx;  % �e������2�������摜�����Z
figure, imshow(Jxy, [])        % �����摜��\��

% 2�������t�B���^
h = [0 1 0; % ���v���V�A���t�B���^��`
     1 -4 1;   
     0 1 0];
J = imfilter(I, h);    % �t�B���^h���摜�ɓK�p
figure, imshow(J, []);        % �����摜��\��

% ��L2�����摜����v���邱�Ƃ��m�F
G = abs(Jxy - J);    % �����摜����
figure, imshow(G, []);        % �����摜��\��



