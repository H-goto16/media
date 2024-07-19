I = imread("peacock.jpg");    % �摜�̓ǂݍ���
I = rgb2gray(I);   % RGB�摜 �� grayscale�摜
figure, imshow(I);              % �摜�\��

I = imnoise(I, "salt & pepper", 0.02);     % �m�C�Y���x0.02�̂��܉��m�C�Y�t��
figure, imshow(I);                      % �����摜��\��
J = medfilt2(I, [5 5]);    % 5�~5�̃��f�B�A���t�B���^�K�p
figure, imshow(J);                      % �����摜��\��

h = (1/16)*[1 2 1;    % 3�~3�̉��d���ω��t�B���^��`
            2 4 2;    
            1 2 1];              
J = imfilter(I, h);    % �t�B���^h���摜�ɓK�p
figure, imshow(J);              % �����摜��\��

Iblur = imgaussfilt(I, 2.0);        % ��=2.0�̃K�E�V�A���t�B���^�K�p
figure, imshow(Iblur);          % �����摜��\��

% k�ŋߗו������t�B���^
Iguided = imguidedfilter(I, "NeighborhoodSize", [5 5]);   % 5�~5�̗̈�
figure, imshow(Iguided);           % �����摜��\��