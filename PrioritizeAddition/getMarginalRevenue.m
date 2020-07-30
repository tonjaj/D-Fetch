function MR = getMarginalRevenue(addition_rec,sim_usage, bottleneck_score, time)
%GETMARGINALREVENUE Summary of this function goes here
%   Detailed explanation goes here

MR = zeros(1,addition_rec);
num_assets = length(sim_usage) - 1;

weight = 0.5;
if (bottleneck_score == 9)
    weight = 0.6;
elseif (bottleneck_score == 10)
    weight = 0.7;
end

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

