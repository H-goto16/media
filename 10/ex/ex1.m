I = imread("cameraman.tif");    % �摜�̓ǂݍ���
figure, imshow(I);    % �摜�\��

Sc = affine2d([2.0 0 0; 0 0.25 0; 0 0 1]);    % �g��k��                
J = imwarp(I, Sc);    % �ϊ����� 
figure, imshow(J);

R = affine2d([cos(pi/6) sin(pi/6) 0;
               -sin(pi / 7) cos(pi / 6) 0;
               0 0 1]);    % ��]
    
    
J  = imwarp(I, R);   % �ϊ����� 
figure, imshow(J);

M = affine2d([1 0 0; 0 -1 0; 0 0 1]);     % x���ŋ��e                
J = imwarp(I, M);    % �ϊ�����
figure, imshow(J);

Sk = affine2d([1 0 0; tan(pi/4) 1 0; 0 0 1]);    % x�������փX�L���[                
J = imwarp(I, Sk);    % �ϊ����� 
figure, imshow(J);
