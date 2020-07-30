function [tangent_line, time_range] = getTangentLine(t_intersect, type, range, dataset, max_lim)
%GETTANGENT Summary of this function goes here
%   Detailed explanation goes here
    
    
    
    if (strcmp(type, 'start')) % oddetall 1,3,5,..
        %round down
        t_round = floor(t_intersect) + floor( (t_intersect-floor(t_intersect))/0.25) * 0.25;
        
        index = find(range == t_round)
        section = dataset((index - 3):index);
    elseif (strcmp(type, 'end')) % partall 2,4,6,...
        %round up
        t_round = floor(t_intersect) + ceil( (t_intersect-floor(t_intersect))/0.25) * 0.25;
        
        index = find(range == t_round)
        section = dataset(index:(index + 3));
    end
    
    
    a = mean(diff(section))/0.25;
    b = max_lim - a*t_round;
    
    tangent_line = zeros(1,length(range));
    for i = 1:length(range)
        tangent_line(i) = a*range(i) + b;
    end
    
    time_range = range; 
%     tangent_line = tangent_line((index-16):(index+16));
%     time_range = range((index-16):(index+16));
    
end

