I = imread('coins.png');            % �摜�̓ǂݍ���
figure, imshow(I);                  % �摜�̕\��

% �����ߏ����̊m�F
thresh = graythresh(I);             % ���ʕ��͖@�ɂ��臒l������
J = I > thresh*256;                 % thresh��p����2�l�摜�̐���
figure, imshow(J);                  % �摜�̕\��
se = strel("disk", 5);               % ���a5�i4.5�j�̉~�̍\���v�f
K = imdilate(J, se);    % �c������
figure, imshow(K);                  % �摜�̕\��

% �m�C�Y�����̊m�F
I = imnoise(I, "salt & pepper");    % ���܉��m�C�Y�̒ǉ�
thresh = graythresh(I);             % ���ʕ��͖@�ɂ��臒l������
J = I > thresh*256;                 % thresh��p����2�l�摜�̐���
figure, imshow(J);                  % �摜�̕\��
se = strel("disk", 1);    % ���a1�i1.5�j�̉~�̍\���v�f
K = imerode(J, se);    % ���k����
figure, imshow(K);                  % �摜�̕\��
