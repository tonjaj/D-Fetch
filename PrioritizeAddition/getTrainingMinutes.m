function training_minutes = getTrainingMinutes(num_assets,sim_usage, logging_time)
%GETTRAININGMINUTES Summary of this function goes here
%   Detailed explanation goes here
training_minutes = 0;
for i = 0:num_assets
   training_minutes = training_minutes + (i * sim_usage(i+1) * logging_time);
end
end

