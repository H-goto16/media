RGB = imread('peppers.png');
figure, imshow(RGB);

[H, W, C] = size(RGB);                  % �摜�̃T�C�Y�擾
vectorRGB = reshape(RGB, H * W, C);    % �i����*���j�~ RGB�ɃT�C�Y�ϊ�    
vectorRGB = cast(vectorRGB, 'double');  % double�^��cast

R = [255.0 0 0];    % �ԐF R = 255, G = 0, B = 0
vectorRGB = vectorRGB -R;    % �e��f�ɂ�����R�Ƃ̍�
vectorRGB = vectorRGB .* vectorRGB;   % �e��f�ɂ����č��̓��
vectorRGB = sqrt(sum(vectorRGB, 2));    % �e��fRGB�̓��l�̍��v

euqlid_img = reshape(vectorRGB, H ,W);   % �����~���ɃT�C�Y�ϊ�
imtool(euqlid_img);    % ���[�N���b�h�̋����m�F

likelihood_R = euqlid_img < 125; % ������臒l�����ł����,1
figure, imshow(likelihood_R);




