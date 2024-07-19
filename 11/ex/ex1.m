I_RGB = imread('ngc6543a.jpg');     % �摜�f�[�^�̓ǂݍ���
I = rgb2gray(I_RGB);    % �J���[�摜���O���C�X�P�[���摜�֕ϊ�
figure, imshow(I);                  % �摜�̕\��

figure, histogram(I);    % �q�X�g�O�����̐���
thresh = 30;    % �蓮��臒l�ݒ�
J = I > thresh;    % 2�l������
figure, imshow(J);                  % �摜�̕\��

N = histcounts(I, 256);    % �q�X�g�O�����̐���
p_title = 50000;    % �ʐ�50000��f
cnt = 0;    % �ʐϐ��̕ϐ�
num = 255;    % �p�x��
        
while cnt < p_title    % ����������p�x��ώZ
    cnt = cnt + N(num);    % �ώZ����M���l��1������
    num = num - 1;
    thresh = num;
end

J = I > thresh;% 2�l������
figure, imshow(J);                  % �摜�̕\��

thresh = graythresh(I);    % ���ʕ��͂�臒l����i0�`1�Ő��K���j
J = I > thresh * 256;    % 2�l������
figure, imshow(J);                  % �摜�̕\��
 




