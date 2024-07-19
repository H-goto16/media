I = imread('peacock.jpg');              % �N�W���N�摜�̓ǂݍ���
I = I(251:750, 1:500, :);    % 500x500�̗̈�Ő؂�o��
I = rgb2gray(I);                        % RGB�摜��grayscale�摜��
I = cast(I, 'double');                  % �ϐ��̌^��ύX

ImgFFT = fft2(I);   % �����t�[���G�ϊ�
imtool(ImgFFT);    % �t�[���G�W���̕\��
ImgFFT = fftshift(ImgFFT);    % ���g���V�t�g
imtool(ImgFFT);    % �t�[���G�W���̕\��

[height, width] = size(ImgFFT);    % �摜�T�C�Y�̎擾
cy = floor(height/2);    % �t�[���G�摜�̏d�Sy���W
cx = floor(width/2);    % �t�[���G�摜�̏d�Sx���W
Fsize = 20; % �t�B���^�T�C�Y
filter2D = zeros(height, width);    % �S�ă[����height�~width�z��
filter2D(cy - Fsize : cy+Fsize, cx-Fsize:cx+Fsize) = 1;    % ���S������0�Ɂ˃��[�p�X�t�B���^
    
figure, imshow(filter2D, []);   % ���[�p�X�t�B���^�\��

result = filter2D.* ImgFFT;    % ���[�p�X�p�X�t�B���^�̓K�p
imtool(result);    % �t�[���G�W���̕\��

ImgIFFT = ifft2(result);    % �����t�[���G�t�ϊ�
ImgIFFT = sqrt(ImgIFFT) .*conj(ImgIFFT);    % ���f����
figure, imshow(ImgIFFT, []);    % �����摜�̕\��




