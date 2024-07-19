I = imread("bag.png");
figure, imshow(I);

[height, ~] = size(I);    % �摜�̃T�C�Y�擾
J = I(1:round(height/3));    % �ォ��1/3���R�s�[
K = I(2*round(height/3) + 1: end, : );    % ������1/3���R�s�[
figure, imshow(J);
figure, imshow(K);

offsets = [0 1; -1 1; -1 0; -1 -1];    % 0, 45, 90, 135�x

% ���N�s��
[glcms, ~] = graycomatrix(J, "Offset", offsets, "Symmetric",true);                
stats = graycoprops(glcms, {"Contrast", "Correlation", "Energy", "Homogeneity"});    % �e�N�X�`�������ʎ擾

disp(['Contrast:' num2str(max(stats.Contrast))]);
disp(['Correlation:' num2str(max(stats.Correlation))]);
disp(['Energy:' num2str(max(stats.Energy))]);
disp(['Homogeneity:' num2str(max(stats.Homogeneity))]);


