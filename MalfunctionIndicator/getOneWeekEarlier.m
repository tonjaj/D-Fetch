function [res_day,res_month, res_year] = getOneWeekEarlier(day, month, year)
%GETONEWEEKEARLIER Summary of this function goes here

months_31 = [ '01', '03', '05', '07', '08', '10', '12' ];

res_year = year;
res_month = month - 1;
res_day = day - 7;
if (day < 1)
    for i = 1:length(months_31)
        if (strcmp(month, months_31(i))
            res_day = 
    

end

