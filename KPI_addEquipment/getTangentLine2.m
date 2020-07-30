function [tangent_line, time_range] = getTangentLine2(t_intersect, type, range, dataset, max_lim)
%GETTANGENT Summary of this function goes here
%   Detailed explanation goes here
    
    
    
    if (strcmp(type, 'start')) % oddetall 1,3,5,..
        %round down
        t_round = round(t_intersect/10) * 10;
        
        index = find(range == t_round)
        section = dataset((index - 2):index);
    elseif (strcmp(type, 'end')) % partall 2,4,6,...
        %round up
        t_round = round(t_intersect/10) * 10;
        
        index = find(range == t_round)
        section = dataset(index:(index + 2));
    end
    
    
    a = mean(diff(section)) / 10;
    b = max_lim - a*t_round;
    
    tangent_line = zeros(1,length(range));
    for i = 1:length(range)
        tangent_line(i) = a*range(i) + b;
    end
    
    time_range = range; 
%     tangent_line = tangent_line((index-16):(index+16));
%     time_range = range((index-16):(index+16));
    
end


