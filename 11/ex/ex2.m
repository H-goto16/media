I = imread('coins.png');            % �摜�̓ǂݍ���
figure, imshow(I);                  % �摜�̕\��
bw = imbinarize(I);    % ���ʕ��͖@�ɂ��2�l�摜�̐���
figure, imshow(bw);                 % �摜�̕\��

bw = bwareaopen(bw, 30);    % �ʐς�30�����̗̈�폜
figure, imshow(bw);                 % �摜�̕\��
bw = imfill(bw, "holes");   % �̈���̌�����
figure, imshow(bw);                 % �摜�̕\��

[B, L] = bwboundaries(bw, "noholes");    % ���E���o
figure, 
imshow(label2rgb(L, @jet, [.5 .5 .5]));     % �̈�i���x���j���ƂɐF�t��

