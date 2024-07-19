I = imread('coins.png');            % �摜�̓ǂݍ���
figure, imshow(I);                  % �摜�̕\��
thresh = graythresh(I);             % ���ʕ��͖@�ɂ��臒l������
I = I > thresh*256;                 % thresh��p����2�l�摜�̐���

I = I(55:155, 75:145);    % �摜�̐؂�o��
I = imresize(I, 2.0);    % �摜�̊g��
figure, imshow(I);                  % �摜�̕\��

se = strel("disk", 5);    % ���a5�i4.5�j�̉~�̍\���v�f

% closing���� �c���^���k 1��
J = imdilate(I, se);    % �c������
figure, imshow(J);                  % �摜�̕\��
K = imerode(J, se);    % ���k����
figure, imshow(K);                  % �摜�̕\��

% closing���� �c���^���k 2��
J = imdilate(I, se);    % �c������
J = imdilate(J, se);    % �c������
figure, imshow(J);                  % �摜�̕\��
K = imerode(J, se);    % ���k����
K = imerode(K, se);    % ���k����
figure, imshow(K);                  % �摜�̕\��

