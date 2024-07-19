I = imread('pout.tif');    % pout.tif�摜�̓ǂݍ���
figure, imshow(I);         % �摜�\��   
figure, histogram(I);      % �q�X�g�O�����\��    

stretchlim(I)              % �M���l�͈͂̎擾�i�������C1%�O�a�j
                           % 8bit�摜�i�g�p�\�͈� 0��0, 255��1�j

% ���͉摜��51(=0.2*255)����153(=0.6*255)��0�`255�͈̔͂Ɉ������΂�
J = imadjust(I, [0.2 0.6], [0 1]);
figure, imshow(J);

% ���͉摜���K���}�␳�Ō��Ղ�
J = imadjust(I, [0 1], [0 1], 0.5);
figure, imshow(J);

% ���͉摜��76(=0.3*255)����177(=0.7*255)���K���}�␳�Ō��Ղ�
J = imadjust(I, [0.3 0.7], [ ], 0.5);
figure, imshow(J);

% �q�X�g�O�������R����p���āC���Ղ�
J = histeq(I);
figure, histogram(J);
figure, imshow(J);

