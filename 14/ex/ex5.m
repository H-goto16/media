I  = imread('circuit.tif');                 % �摜�̓ǂݍ���
rotI = imrotate(I,33,'crop');               % �摜�̉�]
BW = edge(rotI); % canny�̃G�b�W���o
figure, imshow(BW);

[H,T,R] = hough(BW);  % �G�b�W�摜���n�t�ϊ�
figure, imshow( ...                         % �σƋ�Ԃ̓��[���ʕ\��
    H,[],'XData',T,'YData',R,...
    'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;

P = houghpeaks(H , 5);     % ���[��������5�_���擾
        
x = T(P(:,2)); y = R(P(:,1));
plot(x,y,'s','color','white');

lines = houghlines(BW,T,R,P, ...    % �n�t�ϊ��Ɋ�Â��������o
    'FillGap',5,'MinLength',7);     % FillGap�F�����n�t�ϊ��r����    
figure, imshow(rotI), hold on       % �֘A�t�����Ă��� 2 �̐����Ԃ̋��� 

for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');   
end
