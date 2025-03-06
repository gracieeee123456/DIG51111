%Tutorial 6 Tasks

% y = randn;
% y = randn (n);
% y = randn (m,n);

NoiseFs = 22050;
NoiseDur = 2;
Noise = randn(44100,1);
sound(Noise,NoiseFs);

signalAnalyzer

b = week6filter.Numerator;
a = 1;

stem(b); %This plots the impulse response of my filter
newnoise1 = conv(Noise, b);
newnoise2 = filter(b,a, Noise);

%Playback them
sound(newnoise1, NoiseFs);
pause(NoiseDur +0.5);
sound(newnoise2.NoiseFs);

lenA = length(newnoise1);
lenB = length(newnoise2);
length = abs(lenA - lenB);
disp("Length difference between A and B")