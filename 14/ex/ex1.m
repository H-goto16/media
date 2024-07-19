p =  [1;  1;  1];                            % 位置ベクトルp
q =  [3;  3;  3];                            % 位置ベクトルq
r = [-2;  1;  1];                            % 位置ベクトルr
s = [-2; -2; -2];                            % 位置ベクトルs

figure, hold on;
text(q(1), q(2), q(3), 'p')                  % ベクトル名追加
quiver3(0, 0, 0, q(1), q(2), q(3), 0, 'b');  % 矢印線（ベクトル）
text(p(1), p(2), p(3), 'q');                  
quiver3(0, 0, 0, p(1), p(2), p(3), 0, 'r');       
text(r(1), r(2), r(3), 'r');
quiver3(0, 0, 0, r(1), r(2), r(3), 0, 'g');
text(s(1), s(2), s(3), 's');
quiver3(0, 0, 0, s(1), s(2), s(3), 0, 'm');

euqlid_pq = sqrt((p(1) - q(1)) ^2 + (p(2) - q(2)) ^2 + (p(3) - q(3)) ^2);
                                             % ユークリッド距離
norm_pq = norm(p - q);                                 % ノルム

cos_pq = p' *q / (norm(p) * norm(q))                                    % コサインθ
cos_qr = q'*r/(norm(q)*norm(r))              % コサインθ
cos_rp = r'*p/(norm(r)*norm(p))              % コサインθ
cos_ps = p'*s/(norm(p)*norm(s))              % コサインθ


