I = imread('coins.png');            % �摜�̓ǂݍ���
I = imnoise(I, 'salt & pepper');    % ���܉��m�C�Y
figure, imshow(I);                  % �摜�̕\��

thresh = graythresh(I);             % ���ʕ��͖@�ɂ��臒l������
I = I > thresh*256;                 % thresh��p����2�l�摜�̐���
figure, imshow(I);                  % �摜�̕\��

se = strel("disk", 1);    % ���a1�i1.5�j�̉~�̍\���v�f

% opening���� ���k�^�c�� 1��
J = imerode(I, se);    % ���k����
figure, imshow(J);                  % �摜�̕\��
K = imdilate(J, se);    % �c������
figure, imshow(K);                  % �摜�̕\��

% opening���� �c���^���k 2��
J = imerode(I, se);    % ���k����
J = imerode(J, se);    % ���k����
figure, imshow(J);                  % �摜�̕\��
K = imdilate(J, se);    % �c������
K = imdilate(K, se);    % �c������
figure, imshow(K);                  % �摜�̕\��
