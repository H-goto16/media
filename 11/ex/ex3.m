I  = imread('rice.png');                    % �摜�̓ǂݍ���
figure, imshow(I);                          % �摜�̕\��
BW = I > 130;     % 2�l������
figure, imshow(BW);                         % �摜�̕\��

cc = bwconncomp(BW);    % �A�������̌��o
stats = regionprops(cc, "Area", "MajorAxisLength");         % �`��������o
       % �ʐρC�厲�i�����j�̒���
idx = find([stats.Area] >= 30 & [stats.MajorAxisLength] >= 20);            % �ʐ�30�ȏ�C�厲20�ȏ��
BW2 = ismember(labelmatrix(cc), idx);        % �A�������𒊏o
         % ��L�����𖞂���������o�^
figure, imshow(BW2);                        % �摜�̕\��

