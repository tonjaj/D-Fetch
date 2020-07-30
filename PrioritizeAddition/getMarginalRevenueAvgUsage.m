function MR = getMarginalRevenueAvgUsage(addition_rec,sim_usage, asset_name, time)
%GETMARGINALREVENUE Summary of this function goes here
%   Detailed explanation goes here

MR = zeros(1,addition_rec);
num_assets = length(sim_usage) - 1;

avg_usage_table = readtable('Usage during peak 2 h Bislett.csv');
index = find(ismember(avg_usage_table.name, asset_name));
avg_usage_val = avg_usage_table.AverageOfPeak_2h_usage(index);

weight = (avg_usage_val - 0.6) * 0.5 + 0.5;

for i = 1:addition_rec
    revenue_prev = getTrainingMinutes(num_assets, sim_usage, time);
    zero_available = sim_usage(end);
    sim_usage(end) = zero_available * (1-weight);
    sim_usage = [sim_usage, zero_available * (weight)];
    num_assets = length(sim_usage) - 1;
    
    revenue_curr = getTrainingMinutes(num_assets, sim_usage, time);
    
    MR(i) = revenue_curr - revenue_prev;
end

end

