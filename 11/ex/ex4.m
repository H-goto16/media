BW = imread('text.png');                    % �摜�̓ǂݍ���
imshow(BW);
cc = bwconncomp(BW);% �A�������̌��o

stats = regionprops(cc, "Perimeter");% ���͒���40��f�ȏ�̘A�����������c��
idx = find([stats.Perimeter] >= 40);           % �`��������o
BW2 = ismember(labelmatrix(cc), idx);           % ���͒���40�ȏ�̘A�������𒊏o
         % ��L�����𖞂���������o�^
figure, imshow(BW2);                        % �摜�̕\��

stats = regionprops(cc, "EulerNumber");% ���͒���40��f�ȏ�̘A�����������c��
idx = find([stats.EulerNumber] == 0);           % �`��������o
BW2 = ismember(labelmatrix(cc), idx);     
figure, imshow(BW2);                        % �摜�̕\��
