I = imread('cameraman.tif');            % �摜�̓ǂݍ���
figure, imshow(I);                      % �摜�\��
R_array = ([cos(pi/4) sin(pi/4) 0;
               -sin(pi / 4) cos(pi / 4) 0;
               0 0 1]);  % ��/4��]�̕ϊ��s��
            % (MATLAB�̎d�l���ӁI�j
            
R = affine2d(R_array);                  % ��]�s�񐶐�
J =     imwarp(I,R);                        % �ϊ����� 
figure, imshow(J);                      % �����摜�\��

M_array =  [-1 0 0; 0 1 0;0 0 1];     % Y���ŋ��e�̕ϊ��s��i�d�l���ӁI�j
M = affine2d(M_array);                  % ���e�s�񐶐�               
K = imwarp(J,M);                        % �ϊ����� 
figure, imshow(K);                      % �����摜�\��

RM_array = R_array * M_array;              % �����ϊ��s�� (MATLAB�̎d�l���ӁI�j     
RM =    affine2d(RM_array);                % �����ϊ�
L =     imwarp(I,RM);                       % �ϊ����� 
figure, imshow(L);

