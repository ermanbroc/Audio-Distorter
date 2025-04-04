% Erman Mason
% Script to translate stereo audio to mono
% 03/21/2025

function audioMono = mono(audio)
    
    if size(audio, 2) > 1           % If audio is stereo, average the
        audioMono = mean(audio, 2); % values into a single channel

    else
        audioMono = audio;          % If audio is already mono, do nothing

    end

end