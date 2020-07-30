% clear all;
% clc;
% close all;
% 
% motion_minutes = importCSV('motion_minutes_sep01-mar12.csv');

subtables = cell(1,111);

for i = 1:111
   
   subtables{i} = motion_minutes(motion_minutes.placement_id==i,:); 
   
   if (~empty(subtables{i}))
       
       time = subtables{i}.time
    
       
   end
   
    
end

