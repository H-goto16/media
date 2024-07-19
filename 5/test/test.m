rgbI =  imread("flamingos.jpg");% 'flamingos.jpg'�摜�ǂݍ���
figure, imshow(rgbI);                   % rgbI�̕\��
hsvI =  rgb2hsv(rgbI);                   % RGB�摜��HSV�摜�ɕϊ�
[h,s,v] =   imsplit(hsvI);                % HSV�e�����ɕ���

% �F����0.2�`1�܂�0.2���݂ŉ��Z���C�\��
for d = 0.2:0.2:1                         % for���ŕϐ�d��0.2���݂ɕω�
    th = mod(h+d, 1.0);                 % �F����d�����Z��mod�֐��ŏ�]���v�Z
    hsvI(:,:, 1) = th;                   % �F��������u��
    rgbI =  hsv2rgbuu(hsvI);               % RGB�摜�֕ϊ�
    figure, imshow(rgbI);               % �摜�̕\��
end
    
% ���x��0.5�`1.5�܂�0.5���݂ŏ�Z���C�\��
for d = 0.5:0.5:1.5                          % for���ŕϐ�d��0.5���݂ɕω�
    tv = v * d;                            % ���x��d����Z
    tv = (tv > 1.0) + (tv <= 1.0) .* tv; % ���x��1�ȉ��ɁI
    hsvI(:,:, 3) = tv;                    % ���x������u��
    rgbI =  hsv2rgb(hsvI);                % RGB�摜�֕ϊ�
    figure, imshow(rgbI);                % �摜�̕\��
end    
