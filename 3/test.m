% 1�����M���Ŋm�F
t = 0:1 / 800:1;    % 0�`1�܂�1/800�b���݂̃T���v��
y = 10 * sin(2 * pi * t);  % �U��10�C���g��1Hz�̐����g�M�� 
plot(t, y);                 % �M�����T���v���_���ƂɃv���b�g
grid on;    % �O���t�ɃO���b�h����ǉ�
xlabel('time (s)');    % �O���t��X����'time (s)'���x���ǉ�
hold on;    % �O���t�ǉ����[�h
t = 0:1 / 50:1;    % 0�`1�܂�1/50�b���݂̃T���v���_
y = round(10*sin(pi*2*t));  % y�𐮐��Ŋۂ߂�
plot(t,y,"-ro");             % �ԁ��̃}�[�J�[�Ńv���b�g

% �O���f�[�V�����Ŋm�F
t = 0:1 / 800:1;    % 0�`1�܂�1/800�b���݂̃T���v���_
y = 10 * sin(2 * pi * t);    % �U��10�C���g��1Hz�̐����g�M�� 
figure, imagesc(y);         % �X�P�[�����O�����F�ɂ��C���[�W�̕\��
colormap(gray);             % grayscale�̃J���[�}�b�v�\��
t = 0:1 / 50:1;    % 0�`1�܂�1/50�b�b���݂̃T���v���_
y = round(10 * sin(pi * 2 * t));    % y�𐮐��Ŋۂ߂�
figure, imagesc(y);   % �X�P�[�����O�����F�ɂ��C���[�W�̕\��
colormap(gray);    % grayscale�̃J���[�}�b�v�\��

