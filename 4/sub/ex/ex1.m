RGB = imread('peppers.png');    % �摜�̓ǂݍ���
figure, imshow(RGB);            % �摜�\��        

figure, histogram(RGB(:,:,1));    % R�����̃q�X�g�O����
figure, histogram(RGB(:,:,2));    % G�����̃q�X�g�O����
figure, histogram(RGB(:,:,3));    % B�����̃q�X�g�O����

I_gray = rgb2gray(RGB);           % RGB�摜 �� grayscale�摜
figure, imshow(I_gray);           % �摜�\��   
figure, histogram(I_gray);        % �q�X�g�O����

min(I_gray(:))            % �ŏ��l�̎擾
max(I_gray(:))            % �ő�l�̎擾
mean(I_gray(:))           % ���ϒl�̎擾
var(double(I_gray(:)))    % ���U�̎擾
std(double(I_gray(:)))    % �W���΍��̎擾
median(I_gray(:))         % �����l�̎擾
mode(I_gray(:))           % �ŕp�l�̎擾


