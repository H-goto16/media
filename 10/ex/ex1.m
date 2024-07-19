I = imread("cameraman.tif");    % ‰æ‘œ‚Ì“Ç‚İ‚İ
figure, imshow(I);    % ‰æ‘œ•\¦

Sc = affine2d([2.0 0 0; 0 0.25 0; 0 0 1]);    % Šg‘åk¬                
J = imwarp(I, Sc);    % •ÏŠ·ˆ— 
figure, imshow(J);

R = affine2d([cos(pi/6) sin(pi/6) 0;
               -sin(pi / 7) cos(pi / 6) 0;
               0 0 1]);    % ‰ñ“]
    
    
J  = imwarp(I, R);   % •ÏŠ·ˆ— 
figure, imshow(J);

M = affine2d([1 0 0; 0 -1 0; 0 0 1]);     % x²‚Å‹¾‰e                
J = imwarp(I, M);    % •ÏŠ·ˆ—
figure, imshow(J);

Sk = affine2d([1 0 0; tan(pi/4) 1 0; 0 0 1]);    % x²•ûŒü‚ÖƒXƒLƒ…[                
J = imwarp(I, Sk);    % •ÏŠ·ˆ— 
figure, imshow(J);
