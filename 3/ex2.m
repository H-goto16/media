t = 0:2 * pi / 2000:4 * pi;    % 2��/2000���݂�0�`4�΂܂ŃT���v���_

for r = 0.1:0.2:4    % for �����l:������:�I���l
    plot(r * sin(t), r * cos(t), 'k-');% ���ar�̓��S�~��`��
    hold on;% �����}�ɕ`���ݒ�
end    
axis([-4, 4, -4, 4]);    % �}�̎��ݒ�
axis square;    % �}�̌`�@�ˁ@�����`
saveas(gcf, 'circles.tif');    % �摜�t�@�C���Ƃ��ď��o��

I = imread("circles.tif");    % �摜�t�@�C���̓Ǎ���
J = imresize(I, 0.25, "Antialiasing",true);    % ����������0.25�{�ɏk��
figure, imshow(J);    
J = imresize(I, 0.25, "Antialiasing",true);    % ������������0.25�{�ɏk��
figure, imshow(J);
