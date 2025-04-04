% Erman Mason
% Script to shift speed/tone of audio files without adjusting sample rate
% 03/21/2025

function newaudio = shift_audio(oldaudio, shift)

    ns_old = length(oldaudio);    % Finds # of samples in the old audio

    ns_new = round(ns_old/shift); % Finds # of samples in the new audio

    newaudio = zeros(ns_new, 2);  % Pre-allocates a matrix storing new
                                  % audio

    for i = 1:ns_new
        % Finds what values of the old matrix go where in the new due to
        % shift
        newaudio(i, :) = oldaudio(round(i*shift), :); 
    end

end