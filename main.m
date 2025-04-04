% Erman Mason
% Script to modify mp3 or wav files
% 04/04/2025

clear;
clc; close all;

originalfilename = "JP.mp3";  % Change to your original audiofile name
newfilename = "new.mp3";      % Change to desired output audiofile name

monoval = 0;                  % Set to one to switch to mono
shift = 1.2;                  % Set to desired shift factor
crunch = 0.4;                 % Amount of crunch, between 0 and 1

[audio,fs] = audioread(originalfilename); % Reads the audio into a matrix

if monoval == 1
    audio = mono(audio); % Converts to mono if selected
end

audio = shift_audio(audio, shift); % Shifts audio by desired amount

if crunch >= 0
    if crunch <= 1
        audio = crunch_audio(audio, crunch); % If crunch factor in bounds,
                                             % perform crunch
    end
end

% Add '%' below to mute audio
sound(audio,fs)

% Remove '%' below when ready to write to output
% audiowrite(newfilename,newaudio,Fs)