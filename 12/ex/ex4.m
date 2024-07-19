I = zeros(50,50);
I(10:20, 20:40) = 1;
I(15, 25:35)    = 0;
I(13:17, 30)    = 0;
I(18, 40:45)    = 1;
I(31, 11)       = 1;
I(41:42, 21:22) = 1;
I = imresize(I, 3.0, 'nearest');    % �摜�̊g��
figure, imshow(I);                  % �摜�̕\��

se = strel("disk", 3);    % �\���v�f

% black tophat����
K = imdilate(I,se);    % �c������
J = imerode(K, se);    % ���k����
L = J - I;    % ��������
figure, imshow(L);                  % �摜�̕\��

% white tophat����
K = imerode(I,se);    % ���k����
J = imdilate(K, se);    % �c������
L = I - J;    % ��������
figure, imshow(L);                  % �摜�̕\��
