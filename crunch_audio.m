% Erman Mason
% Script to crunch audio by amplifying it beyond cutoff
% 03/21/2025

function newaudio = crunch_audio(oldaudio, crunch)
    
    max = .5-crunch/4;                 % Sets a dynamic cutoff limit,
                                       % balancing volume
    
    newaudio = oldaudio*(1+crunch*10); % Amplifies the audio
    
    newaudio(newaudio > max) = max;    % Trims values above the cutoff

end