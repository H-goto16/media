p =  [1;  1;  1];                            % �ʒu�x�N�g��p
q =  [3;  3;  3];                            % �ʒu�x�N�g��q
r = [-2;  1;  1];                            % �ʒu�x�N�g��r
s = [-2; -2; -2];                            % �ʒu�x�N�g��s

figure, hold on;
text(q(1), q(2), q(3), 'p')                  % �x�N�g�����ǉ�
quiver3(0, 0, 0, q(1), q(2), q(3), 0, 'b');  % �����i�x�N�g���j
text(p(1), p(2), p(3), 'q');                  
quiver3(0, 0, 0, p(1), p(2), p(3), 0, 'r');       
text(r(1), r(2), r(3), 'r');
quiver3(0, 0, 0, r(1), r(2), r(3), 0, 'g');
text(s(1), s(2), s(3), 's');
quiver3(0, 0, 0, s(1), s(2), s(3), 0, 'm');

euqlid_pq = sqrt((p(1) - q(1)) ^2 + (p(2) - q(2)) ^2 + (p(3) - q(3)) ^2);
                                             % ���[�N���b�h����
norm_pq = norm(p - q);                                 % �m����

cos_pq = p' *q / (norm(p) * norm(q))                                    % �R�T�C����
cos_qr = q'*r/(norm(q)*norm(r))              % �R�T�C����
cos_rp = r'*p/(norm(r)*norm(p))              % �R�T�C����
cos_ps = p'*s/(norm(p)*norm(s))              % �R�T�C����


