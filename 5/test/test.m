rgbI =  imread("flamingos.jpg");% 'flamingos.jpg'‰æ‘œ“Ç‚İ‚İ
figure, imshow(rgbI);                   % rgbI‚Ì•\¦
hsvI =  rgb2hsv(rgbI);                   % RGB‰æ‘œ‚ğHSV‰æ‘œ‚É•ÏŠ·
[h,s,v] =   imsplit(hsvI);                % HSVŠe¬•ª‚É•ªŠ„

% F‘Š‚ğ0.2`1‚Ü‚Å0.2‚İ‚Å‰ÁZ‚µC•\¦
for d = 0.2:0.2:1                         % for•¶‚Å•Ï”d‚ğ0.2‚İ‚É•Ï‰»
    th = mod(h+d, 1.0);                 % F‘Š‚Éd‚ğ‰ÁZ‚µmodŠÖ”‚Åè—]‚ğŒvZ
    hsvI(:,:, 1) = th;                   % F‘Š¬•ª‚ğ’uŠ·
    rgbI =  hsv2rgbuu(hsvI);               % RGB‰æ‘œ‚Ö•ÏŠ·
    figure, imshow(rgbI);               % ‰æ‘œ‚Ì•\¦
end
    
% –¾“x‚ğ0.5`1.5‚Ü‚Å0.5‚İ‚ÅæZ‚µC•\¦
for d = 0.5:0.5:1.5                          % for•¶‚Å•Ï”d‚ğ0.5‚İ‚É•Ï‰»
    tv = v * d;                            % –¾“x‚Éd‚ğæZ
    tv = (tv > 1.0) + (tv <= 1.0) .* tv; % –¾“x‚Í1ˆÈ‰º‚ÉI
    hsvI(:,:, 3) = tv;                    % –¾“x¬•ª‚ğ’uŠ·
    rgbI =  hsv2rgb(hsvI);                % RGB‰æ‘œ‚Ö•ÏŠ·
    figure, imshow(rgbI);                % ‰æ‘œ‚Ì•\¦
end    
