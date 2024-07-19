fs = 100;     % sample frequency (Hz)
t = 0:1/fs:10-1/fs;    % 10 second span time vector
x = (1.3) * sin(2 * pi * 15 * t) ...    % 15 Hz component
    + (1.7) * sin(2 * pi * 40 * (t - 2)) ... % 40 Hz component
    + 2.5 * gallery("normaldata", size(t), 4);% Gaussian noise;
figure, plot(t, x);    

y = fft(x);    % ÉtÅ[ÉäÉGïœä∑
n = length(x);    % number of samples
y0 = fftshift(y);    % shift y values
f0 = (-n/2:n/2-1) * (fs/n);    % 0-centered frequency range
power0 = abs(y0).^2/h;   % 0-centered power

figure, plot(f0,power0)
xlabel('Frequency')
ylabel('Power')

