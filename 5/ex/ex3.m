rgbI = imread('peppers.png');    % �摜�̓ǂݍ���
figure, imshow(rgbI);    % �摜�̕\��
[r, g, b] = imsplit(rgbI);% RGB�����ɕ���
figure, montage({r,g,b}, 'Size',[1 3]);    % �e�����������^�[�W���\��

hsvI = rgb2hsv(rgbI);    % RGB�摜��HSV�摜�ɕϊ�
[h, s, v] = imsplit(hsv1);    % HSV�����ɕ���
figure, montage({r,g,b}, 'Size',[1 3]);    % �e�����������^�[�W���\��

s = s * 2.0;    % �ʓx��2.0�{��
s = (s > 1.0) + (s <= 1.0) .* s;    % �ʓx��1.0�𒴂�����̂�1��
    % �ʓx������u��
    % RGB�摜�֕ϊ�
    % �摜�̕\��
