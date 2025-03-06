%Tutorial 3 Piano synth and signal analyser

%Code for the keyboard
%Generate simple sine wave
%Sound = A*Cos (wt + phase)
%Sound parameters
Amplitude = 0.5; %This sets the sound to 0.5 which is half the max volume
Frequency = 440; %Note A4
W = Frequency*2*pi; %Calculation for angular frequency

%Time!
Fs = 11025; %Sampling frequency 11,025 per sec
Ts = 1/Fs; %The time step (in sec) between each sample
Time = 0:Ts:2; %Time vector that starts at 0 to 2 sec in steps of Ts^

%Create sound
signal = Amplitude*cos(W*Time); %Generating the sine wave signal

%Plot one cycle signal (26 samples - one complete wave cycle)
%26 samples are used because they represent a full cycle of the A4 note
%sine wave when sampled at 11,025
%Time (1:26) (signal (1:26)
figure(1); %Creating a new figure window 
plot(Time(1:26), signal(1:26)); %Plot the first 26 samples
xlabel('Time (Sec)');
ylabel('Amplitude (v)');
grid on; %Add grid to plot for better visualisation

%output to wav file
audiowrite('A4.wav', signal, Fs); %Write the signal to a wav given Fs