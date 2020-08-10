function day_data = fetchDay(data, day, month, year)
%FETCHDAYDATA Summary of this function goes here
%   Detailed explanation goes here
date = strcat(day, '/', month, '/', year);
mask = startsWith( data.time, date);
day_data = data(mask, :);

end

