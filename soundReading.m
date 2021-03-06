
function Hd = untitled
%UNTITLED Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 8.1 and the Signal Processing Toolbox 6.19.
% Generated on: 19-May-2016 20:55:14

% Elliptic Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in Hz.
Fs = 48000;  % Sampling Frequency

Fpass = 600;     % Passband Frequency
Fstop = 12000;   % Stopband Frequency
Apass = 1;       % Passband Ripple (dB)
Astop = 80;      % Stopband Attenuation (dB)
match = 'both';  % Band to match exactly

% Construct an FDESIGN object and call its ELLIP method.
h  = fdesign.lowpass(Fpass, Fstop, Apass, Astop, Fs);
Hd = design(h, 'ellip', 'MatchExactly', match);

% [EOF]

Y=wavread('C:\Users\Aldo\Pendientes\Procesamiento de Se�ales\Actividad 9\TUNE.wav'); 
X=filter(Hd,Y);
sound(X, 48000)
X

