RGB = imread('peppers.png');
figure, imshow(RGB);

[H, W, C] = size(RGB);                  % �摜�̃T�C�Y�擾
vectorRGB =  reshape(RGB, H*W, C);       % �i����*���j�~ RGB�ɃT�C�Y�ϊ�    
vectorRGB =  cast(vectorRGB, "double");  % double�^��cast
P = [100 71 148];                       % ���F R = 100, G = 71, B = 148
vectorRGB =  vectorRGB - P;           % �e��f�ɂ�����P�Ƃ̍�
vectorRGB =  vectorRGB .* vectorRGB;           % �e��f�ɂ����č��̓��
vectorRGB =  sqrt(sum(vectorRGB, 2));    % �e��fRGB�̓��l�̍��v

euqlid_img = reshape(vectorRGB, H, W);  % �����~���ɃT�C�Y�ϊ�
imtool(euqlid_img);                     % ���[�N���b�h�̋����m�F
Non_P = euqlid_img > 125   ;               % �w�i�i���j��0, ��؂�1
figure, imshow(Non_P);

% ��ؗ̈�̑�܂��Ȓ��o�ƌ�����
se = strel("disk", 5);                  
veg_img = imdilate(Non_P, se);
figure, imshow(veg_img);
veg_img = imfill(veg_img, 'holes');
figure, imshow(veg_img);
% ��ؗ̈�̂ݎc��
cc = bwconncomp(veg_img);
stats = regionprops(cc, "Perimeter");
idx = find([stats.Area] >= 30 & [stats.MajorAxisLength] >= 20);
veg_img = ismember(labelmatrix(cc), idx);
figure, imshow(veg_img);
% ��ؗ̈�i2�l�摜�j�ƌ��摜�̊|���Z
out_img = uint8(veg_img).* RGB;
figure, imshow(out_img);


