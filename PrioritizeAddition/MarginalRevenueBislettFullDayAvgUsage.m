% BISLETT
% Peak three months: February 2020, January 2020, November 2019
% Assumed opening hours: 06:00 - 23:00 (constant) 

% Adj. Crossover Cable - Add.Rec.: 2
add_rec_cc_adj = 2;
peak_hrs_cc_adj = 17;

sim_usage_cc_adj_peak = [0.02, 0.23, 0.75];
MR_cc_adj_peak = getMarginalRevenueAvgUsage(add_rec_cc_adj, sim_usage_cc_adj_peak, 'Adj. Crossover Cable', 180);

sim_usage_cc_adj_pre = [0.2379, 0.4262, 0.3224];
MR_cc_adj_pre = getMarginalRevenueAvgUsage(add_rec_cc_adj, sim_usage_cc_adj_pre, 'Adj. Crossover Cable', (peak_hrs_cc_adj - 6) * 60 );

sim_usage_cc_adj_post = [0.3698, 0.2510, 0.3750];
MR_cc_adj_post = getMarginalRevenueAvgUsage(add_rec_cc_adj, sim_usage_cc_adj_post, 'Adj. Crossover Cable', (23 - peak_hrs_cc_adj) * 60);


% Multi Rack - Add.Rec: 6
add_rec_mr = 6;
peak_hrs_mr = 17;

sim_usage_mr_peak = [0, 0, 0, 0.001, 0.007, 0.024, 0.086,0.307, 0.574 ];
MR_mr_peak = getMarginalRevenueAvgUsage(add_rec_mr, sim_usage_mr_peak, 'Multi Rack', 180);

sim_usage_mr_pre = [0.0213, 0.0162, 0.0376, 0.0583, 0.1128, 0.1444, 0.1914, 0.2300, 0.1641 ];
MR_mr_pre = getMarginalRevenueAvgUsage(add_rec_mr, sim_usage_mr_pre, 'Multi Rack', (peak_hrs_mr - 6) * 60);

sim_usage_mr_post = [0.2406, 0.0370, 0.0311, 0.0409, 0.0599, 0.0515, 0.1011, 0.1905, 0.2432 ];
MR_mr_post = getMarginalRevenueAvgUsage(add_rec_mr, sim_usage_mr_post, 'Multi Rack',(23 - peak_hrs_mr) * 60);


% Lat. Pulldown - Add.Rec.: 3
add_rec_lp = 3;
peak_hrs_lp = 17;

sim_usage_lp_peak = [0.004, 0.018, 0.088, 0.304, 0.586];
MR_lp_peak = getMarginalRevenueAvgUsage(add_rec_lp, sim_usage_lp_peak, 'Lat Pulldown', 180);

sim_usage_lp_pre = [0.1013, 0.1719, 0.2737, 0.2659, 0.1638];
MR_lp_pre = getMarginalRevenueAvgUsage(add_rec_lp, sim_usage_lp_pre, 'Lat Pulldown', (peak_hrs_lp - 6) * 60);

sim_usage_lp_post = [0.3188, 0.0651, 0.1512, 0.2097, 0.2510];
MR_lp_post = getMarginalRevenueAvgUsage(add_rec_lp, sim_usage_lp_post, 'Lat Pulldown',(23 - peak_hrs_lp) * 60);

% Fixed Crossover Cable - Add.Rec.: 2
add_rec_cc_fxd = 2;
peak_hrs_cc_fxd = 17;

sim_usage_cc_fxd_peak = [0.007, 0.076, 0.370, 0.548];
MR_cc_fxd_peak = getMarginalRevenueAvgUsage(add_rec_cc_fxd, sim_usage_cc_fxd_peak, 'Fxd. Crossover Cable', 180);

sim_usage_cc_fxd_pre = [0.1375, 0.2796, 0.3703, 0.1889];
MR_cc_fxd_pre = getMarginalRevenueAvgUsage(add_rec_cc_fxd, sim_usage_cc_fxd_pre, 'Fxd. Crossover Cable', (peak_hrs_cc_fxd - 6) * 60);

sim_usage_cc_fxd_post = [0.3229, 0.1107, 0.2695, 0.2927];
MR_cc_fxd_post = getMarginalRevenueAvgUsage(add_rec_cc_fxd, sim_usage_cc_fxd_post, 'Fxd. Crossover Cable',(23 - peak_hrs_cc_fxd) * 60);

% Abdominal - Add.Rec.: 1
add_rec_ab = 1;
peak_hrs_ab = 17;

sim_usage_ab_peak = [0.3255, 0.6745];
MR_ab_peak = getMarginalRevenueAvgUsage(add_rec_ab, sim_usage_ab_peak, 'Abdominal', 180);

sim_usage_ab_pre = [0.6948, 0.2817];
MR_ab_pre = getMarginalRevenueAvgUsage(add_rec_ab, sim_usage_ab_pre, 'Abdominal', (peak_hrs_ab - 6) * 60);

sim_usage_ab_post = [0.5859, 0.4099];
MR_ab_post = getMarginalRevenueAvgUsage(add_rec_ab, sim_usage_ab_post, 'Abdominal',(23 - peak_hrs_ab) * 60);

% Chest Incline - Add.Rec.: 1
add_rec_ci = 1;
peak_hrs_ci = 17;

sim_usage_ci_peak = [0.3229, 0.6771];
MR_ci_peak = getMarginalRevenueAvgUsage(add_rec_ci, sim_usage_ci_peak, 'Chest Incline', 180);

sim_usage_ci_pre = [0.7100, 0.2663];
MR_ci_pre = getMarginalRevenueAvgUsage(add_rec_ci, sim_usage_ci_pre, 'Chest Incline', (peak_hrs_ci - 6) * 60);

sim_usage_ci_post = [0.6255, 0.3703];
MR_ci_post = getMarginalRevenueAvgUsage(add_rec_ci, sim_usage_ci_post, 'Chest Incline',(23 - peak_hrs_ci) * 60);


% Chest Press - Add.Rec.: 1
add_rec_cp = 1;
peak_hrs_cp = 17;

sim_usage_cp_peak = [0.1654, 0.8346];
MR_cp_peak = getMarginalRevenueAvgUsage(add_rec_cp, sim_usage_cp_peak, 'Chest Press', 180);

sim_usage_cp_pre = [0.4882, 0.4879];
MR_cp_pre = getMarginalRevenueAvgUsage(add_rec_cp, sim_usage_cp_pre, 'Chest Press', (peak_hrs_cp - 6) * 60);

sim_usage_cp_post = [0.5021, 0.4938];
MR_cp_post = getMarginalRevenueAvgUsage(add_rec_cp, sim_usage_cp_post, 'Chest Press',(23 - peak_hrs_cp) * 60);

% Chest Press (PL) - Add.Rec.: 1
add_rec_cp_pl = 1;
peak_hrs_cp_pl = 17;

sim_usage_cp_pl_peak = [0.2956, 0.6107];
MR_cp_pl_peak = getMarginalRevenueAvgUsage(add_rec_cp_pl, sim_usage_cp_pl_peak, 'Chest Press (PL)', 180);

sim_usage_cp_pl_pre = [0.5642, 0.3184];
MR_cp_pl_pre = getMarginalRevenueAvgUsage(add_rec_cp_pl, sim_usage_cp_pl_pre, 'Chest Press (PL)', (peak_hrs_cp_pl - 6) * 60);

sim_usage_cp_pl_post = [0.6000, 0.3125];
MR_cp_pl_post = getMarginalRevenueAvgUsage(add_rec_cp_pl, sim_usage_cp_pl_post, 'Chest Press (PL)', (23 - peak_hrs_cp_pl) * 60);

% Hip Thruster - Add.Rec.: 1
add_rec_ht = 1;
peak_hrs_ht = 17;

sim_usage_ht_peak = [0.3073, 0.6927];
MR_ht_peak = getMarginalRevenueAvgUsage(add_rec_ht, sim_usage_ht_peak, 'Hip Thruster', 180);

sim_usage_ht_pre = [0.5419, 0.4347];
MR_ht_pre = getMarginalRevenueAvgUsage(add_rec_ht, sim_usage_ht_pre, 'Hip Thruster', (peak_hrs_ht - 6) * 60);

sim_usage_ht_post = [0.6583, 0.3370];
MR_ht_post = getMarginalRevenueAvgUsage(add_rec_ht, sim_usage_ht_post, 'Hip Thruster', (23 - peak_hrs_ht) * 60);


% Incline Bench Rack - Add.Rec.: 1
add_rec_ibr = 1;
peak_hrs_ibr = 19;

sim_usage_ibr_peak = [0.3424, 0.4544];
MR_ibr_peak = getMarginalRevenueAvgUsage(add_rec_ibr, sim_usage_ibr_peak, 'Incline Bench Rack', 180);

sim_usage_ibr_pre = [0.4938, 0.2734];
MR_ibr_pre = getMarginalRevenueAvgUsage(add_rec_ibr, sim_usage_ibr_pre, 'Incline Bench Rack', (peak_hrs_ibr - 6) * 60);

sim_usage_ibr_post = [0.6302, 0.1597];
MR_ibr_post = getMarginalRevenueAvgUsage(add_rec_ibr, sim_usage_ibr_post, 'Incline Bench Rack', (23 - peak_hrs_ibr) * 60);


% Leg Press (PL) - Add.Rec.: 1
add_rec_lp_pl = 1;
peak_hrs_lp_pl = 16;

sim_usage_lp_pl_peak = [0.2513, 0.7487];
MR_lp_pl_peak = getMarginalRevenueAvgUsage(add_rec_lp_pl, sim_usage_lp_pl_peak, 'Leg Press (PL)', 180);

sim_usage_lp_pl_pre = [0.5878, 0.3859];
MR_lp_pl_pre = getMarginalRevenueAvgUsage(add_rec_lp_pl, sim_usage_lp_pl_pre, 'Leg Press (PL)', (peak_hrs_lp_pl - 6) * 60);

sim_usage_lp_pl_post = [0.5707, 0.4258];
MR_lp_pl_post = getMarginalRevenueAvgUsage(add_rec_lp_pl, sim_usage_lp_pl_post, 'Leg Press (PL)', (23 - peak_hrs_lp_pl) * 60);

% Linear Leg Press (PL) - Add.Rec.: 1
add_rec_llp_pl = 1;
peak_hrs_llp_pl = 17;

sim_usage_llp_pl_peak = [0.2708, 0.7292];
MR_llp_pl_peak = getMarginalRevenueAvgUsage(add_rec_llp_pl, sim_usage_llp_pl_peak, 'Linear Leg Press (PL)', 180);

sim_usage_llp_pl_pre = [0.6146, 0.3615];
MR_llp_pl_pre = getMarginalRevenueAvgUsage(add_rec_llp_pl, sim_usage_llp_pl_pre, 'Linear Leg Press (PL)',(peak_hrs_llp_pl - 6) * 60);

sim_usage_llp_pl_post = [0.6109, 0.3849];
MR_llp_pl_post = getMarginalRevenueAvgUsage(add_rec_llp_pl, sim_usage_llp_pl_post, 'Linear Leg Press (PL)', (23 - peak_hrs_llp_pl) * 60);


% Pulldown - Add.Rec.: 1
add_rec_p = 1;
peak_hrs_p = 17;

sim_usage_p_peak = [0.1641, 0.3411, 0.4896];
MR_p_peak = getMarginalRevenueAvgUsage(add_rec_p, sim_usage_p_peak, 'Pulldown', 180);

sim_usage_p_pre = [0.5242, 0.2654, 0.1711];
MR_p_pre = getMarginalRevenueAvgUsage(add_rec_p, sim_usage_p_pre, 'Pulldown', (peak_hrs_p - 6) * 60);

sim_usage_p_post = [0.4631, 0.2396, 0.2860];
MR_p_post = getMarginalRevenueAvgUsage(add_rec_p, sim_usage_p_post, 'Pulldown', (23 - peak_hrs_p) * 60);

% Row (PL) - Add.Rec.: 1
add_rec_r_pl = 1;
peak_hrs_r_pl = 17;

sim_usage_r_pl_peak = [0.2539, 0.7292];
MR_r_pl_peak = getMarginalRevenueAvgUsage(add_rec_r_pl, sim_usage_r_pl_peak, 'Row (PL)', 180);

sim_usage_r_pl_pre = [0.5696, 0.3965];
MR_r_pl_pre = getMarginalRevenueAvgUsage(add_rec_r_pl, sim_usage_r_pl_pre, 'Row (PL)', (peak_hrs_r_pl - 6) * 60);

sim_usage_r_pl_post = [0.5870, 0.4073];
MR_r_pl_post = getMarginalRevenueAvgUsage(add_rec_r_pl, sim_usage_r_pl_post, 'Row (PL)', (23 - peak_hrs_r_pl) * 60);

% Seated Row - Add.Rec.: 1
add_rec_sr = 1;
peak_hrs_sr = 17;

sim_usage_sr_peak = [0.0352, 0.9648];
MR_sr_peak = getMarginalRevenueAvgUsage(add_rec_sr, sim_usage_sr_peak, 'Seated Row', 180);

sim_usage_sr_pre = [0.2673, 0.7093];
MR_sr_pre = getMarginalRevenueAvgUsage(add_rec_sr, sim_usage_sr_pre, 'Seated Row', (peak_hrs_sr - 6) * 60);

sim_usage_sr_post = [0.3823, 0.6135];
MR_sr_post = getMarginalRevenueAvgUsage(add_rec_sr, sim_usage_sr_post, 'Seated Row', (23 - peak_hrs_sr) * 60);

% Smith Machine - Add.Rec.: 1
add_rec_sm = 1;
peak_hrs_sm = 17;

sim_usage_sm_peak = [0.0872, 0.2734, 0.6393];
MR_sm_peak = getMarginalRevenueAvgUsage(add_rec_sm, sim_usage_sm_peak, 'Smith Machine', 180);

sim_usage_sm_pre = [0.3305, 0.3639, 0.2817];
MR_sm_pre = getMarginalRevenueAvgUsage(add_rec_sm, sim_usage_sm_pre, 'Smith Machine', (peak_hrs_sm - 6) * 60);

sim_usage_sm_post = [0.4865, 0.2427, 0.2667];
MR_sm_post = getMarginalRevenueAvgUsage(add_rec_sm, sim_usage_sm_post, 'Smith Machine', (23 - peak_hrs_sm) * 60);

% Wide Chest Press - Add.Rec.: 1, Peak hours: 17-19
add_rec_wcp = 1;
peak_hrs_wcp = 17;

sim_usage_wcp_peak = [0.3763, 0.6237];
MR_wcp_peak = getMarginalRevenueAvgUsage(add_rec_wcp, sim_usage_wcp_peak, 'Wide Chest Press (PL)', 180);

sim_usage_wcp_pre = [0.7041, 0.2723];
MR_wcp_pre = getMarginalRevenueAvgUsage(add_rec_wcp, sim_usage_wcp_pre, 'Wide Chest Press (PL)', (peak_hrs_wcp - 6) * 60);

sim_usage_wcp_post = [0.5951, 0.4015];
MR_wcp_post = getMarginalRevenueAvgUsage(add_rec_wcp, sim_usage_wcp_post, 'Wide Chest Press (PL)', (23 - peak_hrs_wcp) * 60);



MR_peak_all = {MR_cc_adj_peak, MR_mr_peak, MR_lp_peak, MR_cc_fxd_peak, MR_ab_peak, MR_ci_peak, MR_cp_peak, ...
    MR_cp_pl_peak, MR_ht_peak, MR_ibr_peak, MR_lp_pl_peak, MR_llp_pl_peak, MR_p_peak, MR_r_pl_peak, MR_sr_peak, MR_sm_peak, MR_wcp_peak};

MR_pre_all = {MR_cc_adj_pre, MR_mr_pre, MR_lp_pre, MR_cc_fxd_pre, MR_ab_pre, MR_ci_pre, MR_cp_pre, ...
    MR_cp_pl_pre, MR_ht_pre, MR_ibr_pre, MR_lp_pl_pre, MR_llp_pl_pre, MR_p_pre, MR_r_pl_pre, MR_sr_pre, MR_sm_pre, MR_wcp_pre};

MR_post_all = {MR_cc_adj_post, MR_mr_post, MR_lp_post, MR_cc_fxd_post, MR_ab_post, MR_ci_post, MR_cp_post, ...
    MR_cp_pl_post, MR_ht_post, MR_ibr_post, MR_lp_pl_post, MR_llp_pl_post, MR_p_post, MR_r_pl_post, MR_sr_post, MR_sm_post, MR_wcp_post};

num_addition_types = size(MR_peak_all,2);
types = {'Adj. Crossover Cable', 'Multi Rack', 'Lat. Pulldown', 'Fixed Crossover Cable', 'Abdominal', 'Chest Incline', 'Chest Press', ...
    'Chest Press (PL)', 'Hip Thruster', 'Incline Bench Rack', 'Leg Press (PL)', 'Linear Leg Press (PL)', 'Pulldown', 'Row (PL)', ...
    'Seated Row', 'Smith Machine', 'Wide Chest Press'};
num_additions = add_rec_cc_adj + add_rec_mr + add_rec_lp + add_rec_cc_fxd + add_rec_ab + add_rec_ci + add_rec_cp + add_rec_cp_pl + ...
    add_rec_ht + add_rec_ibr + add_rec_lp_pl + add_rec_llp_pl + add_rec_p + add_rec_r_pl + add_rec_sr + add_rec_sm + add_rec_wcp;
purchase_list_prioritized = cell(num_additions,4);

sum_exercise_hrs_peak_three_months = 53880;
working_days_peak_three_months = 23 + 20 + 21;
exercise_hrs_per_day = sum_exercise_hrs_peak_three_months / working_days_peak_three_months;
exercise_min_per_day = exercise_hrs_per_day * 60;


for i = 1:num_additions
    
    max_index = 1;
    for j = 2:size(MR_peak_all,2)
       if (MR_peak_all{j}(1) > MR_peak_all{max_index}(1))
          max_index = j; 
       end
    end
    purchase_list_prioritized{i,1} = types{max_index};
    purchase_list_prioritized{i,2} = MR_peak_all{max_index}(1);
    purchase_list_prioritized{i,3} = MR_peak_all{max_index}(1) + MR_pre_all{max_index}(1) + MR_post_all{max_index}(1);
    purchase_list_prioritized{i,4} = purchase_list_prioritized{i,3} / exercise_min_per_day; 
    
    MR_peak_all{max_index}(1) = [];
    MR_pre_all{max_index}(1) = [];
    MR_post_all{max_index}(1) = [];
    if (isempty(MR_peak_all{max_index}))
       types(max_index) = [];
       MR_peak_all(max_index) = [];
       MR_pre_all(max_index) = [];
       MR_post_all(max_index) = [];
    end
    
end

disp(purchase_list_prioritized);

filename = 'purchase_list_prioritized_bislett_full_day_avg_usage.csv';    %must end in csv
writetable( cell2table(purchase_list_prioritized), filename, 'writevariablenames', false, 'quotestrings', true)



