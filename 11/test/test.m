I = imread('coins.png');                    % �摜�̓ǂݍ���
figure, imshow(I);                          % �摜�̕\��

thresh =  graythresh(I);   % ���ʕ��͂�臒l������
I = I > thresh*256-30;                      % thresh��p����2�l�摜�̐���
figure, imshow(I);                          % �摜�̕\��

cc = bwconncomp(I);   % �A�������̌��o
     % �A�������̓����ʒ��o

% �����ʂ���������𖞂����A�������𒊏o 
disp(stats)
stats = regionprops(cc, "Perimeter");% ���͒���40��f�ȏ�̘A�����������c��
idx = find([stats.Perimeter] <= 170);  
J = ismember(labelmatrix(cc), idx); % ��L�����𖞂���������o�^
figure, imshow(J);                          % �摜�̕\��


