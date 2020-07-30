% SCHOUS PLASS
% Peak three months: February 2020, January 2020, November 2019
% Assumed opening hours: 06:00 - 23:00 (constant) 

% Multi Rack - Add.Rec: 3
add_rec_mr = 3;
peak_hrs_mr = 17;

sim_usage_mr_peak = [0.0, 0.0013, 0.0026, 0.0219, 0.0763, 0.2651, 0.6328 ];
MR_mr_peak = getMarginalRevenue(add_rec_mr, sim_usage_mr_peak, 8, 180);

sim_usage_mr_pre = [0.0206, 0.0375, 0.0853, 0.1582, 0.2411, 0.2646, 0.1638];
MR_mr_pre = getMarginalRevenue(add_rec_mr, sim_usage_mr_pre, 8, (peak_hrs_mr - 6) * 60);

sim_usage_mr_post = [0.2099, 0.0474, 0.0605, 0.0552, 0.1310, 0.2053, 0.2719 ];
MR_mr_post = getMarginalRevenue(add_rec_mr, sim_usage_mr_post, 8, (23 - peak_hrs_mr) * 60);


% Half Rack - Add.Rec.: 2
add_rec_hr = 2;
peak_hrs_hr = 16;

sim_usage_hr_peak = [0.00, 0.0013, 0.0065, 0.0693, 0.3630, 0.5599];
MR_hr_peak = getMarginalRevenue(add_rec_hr, sim_usage_hr_peak, 8, 180);

sim_usage_hr_pre = [0.0229, 0.0512, 0.1471, 0.2563, 0.3071, 0.1878];
MR_hr_pre = getMarginalRevenue(add_rec_hr, sim_usage_hr_pre, 8, (peak_hrs_hr - 6) * 60);

sim_usage_hr_post = [0.2214, 0.0328, 0.0384, 0.1219, 0.2540, 0.3160];
MR_hr_post = getMarginalRevenue(add_rec_hr, sim_usage_hr_post, 8, (23 - peak_hrs_hr) * 60);


% Leg Extension - Add.Rec.: 1
add_rec_le = 1;
peak_hrs_le = 16;

sim_usage_le_peak = [0.1263, 0.8737 ];
MR_le_peak = getMarginalRevenue(add_rec_le, sim_usage_le_peak, 9, 180);

sim_usage_le_pre = [0.1263, 0.8737 ];
MR_le_pre = getMarginalRevenue(add_rec_le, sim_usage_le_pre, 9, (peak_hrs_le - 6) * 60);

sim_usage_le_post = [0.1263, 0.8737 ];
MR_le_post = getMarginalRevenue(add_rec_le, sim_usage_le_post, 9, (23 - peak_hrs_le) * 60);


% Leg Press - Add.Rec.: 1
add_rec_lp = 1;
peak_hrs_lp = 16;

sim_usage_lp_peak = [0.1823, 0.8177];
MR_lp_peak = getMarginalRevenue(add_rec_lp, sim_usage_lp_peak, 9, 180);

sim_usage_lp_pre = [0.5296, 0.4330];
MR_lp_pre = getMarginalRevenue(add_rec_lp, sim_usage_lp_pre, 9, (peak_hrs_lp - 6) * 60);

sim_usage_lp_post = [0.4670, 0.5174];
MR_lp_post = getMarginalRevenue(add_rec_lp, sim_usage_lp_post, 9, (23 - peak_hrs_lp) * 60);


% Leg Press (PL) - Add.Rec.: 1
add_rec_lp_pl = 1;
peak_hrs_lp_pl = 16;

sim_usage_lp_pl_peak = [0.1927, 0.8073];
MR_lp_pl_peak = getMarginalRevenue(add_rec_lp_pl, sim_usage_lp_pl_peak, 9, 180);

sim_usage_lp_pl_pre = [0.5122, 0.4547];
MR_lp_pl_pre = getMarginalRevenue(add_rec_lp_pl, sim_usage_lp_pl_pre, 9, (peak_hrs_lp_pl - 6) * 60);

sim_usage_lp_pl_post = [0.4510, 0.5334];
MR_lp_pl_post = getMarginalRevenue(add_rec_lp_pl, sim_usage_lp_pl_post, 9, (23 - peak_hrs_lp_pl) * 60);


% Pulldown (PL) - Add.Rec.: 1
add_rec_p_pl = 1;
peak_hrs_p_pl = 17;

sim_usage_p_pl_peak = [0.3164, 0.6836];
MR_p_pl_peak = getMarginalRevenue(add_rec_p_pl, sim_usage_p_pl_peak, 8, 180);

sim_usage_p_pl_pre = [0.6892, 0.2805];
MR_p_pl_pre = getMarginalRevenue(add_rec_p_pl, sim_usage_p_pl_pre, 8, (peak_hrs_p_pl - 6) * 60);

sim_usage_p_pl_post = [0.6208, 0.3604];
MR_p_pl_post = getMarginalRevenue(add_rec_p_pl, sim_usage_p_pl_post, 8, (23 - peak_hrs_p_pl) * 60);


% Row (PL) - Add.Rec.: 1
add_rec_r_pl = 1;
peak_hrs_r_pl = 16;

sim_usage_r_pl_peak = [0.1836, 0.8164];
MR_r_pl_peak = getMarginalRevenue(add_rec_r_pl, sim_usage_r_pl_peak, 9, 180);

sim_usage_r_pl_pre = [0.5641, 0.4031];
MR_r_pl_pre = getMarginalRevenue(add_rec_r_pl, sim_usage_r_pl_pre, 9, (peak_hrs_r_pl - 6) * 60);

sim_usage_r_pl_post = [0.4579, 0.5265];
MR_r_pl_post = getMarginalRevenue(add_rec_r_pl, sim_usage_r_pl_post, 9, (23 - peak_hrs_r_pl) * 60);


% Shoulder Press (PL) - Add.Rec.: 1
add_rec_sp_pl = 1;
peak_hrs_sp_pl = 17;

sim_usage_sp_pl_peak = [0.2669, 0.7331];
MR_sp_pl_peak = getMarginalRevenue(add_rec_sp_pl, sim_usage_sp_pl_peak, 8, 180);

sim_usage_sp_pl_pre = [0.6532, 0.3162];
MR_sp_pl_pre = getMarginalRevenue(add_rec_sp_pl, sim_usage_sp_pl_pre, 8, (peak_hrs_sp_pl - 6) * 60);

sim_usage_sp_pl_post = [0.5953, 0.3859];
MR_sp_pl_post = getMarginalRevenue(add_rec_sp_pl, sim_usage_sp_pl_post, 8, (23 - peak_hrs_sp_pl) * 60);


% Smith Machine - Add.Rec.: 1
add_rec_sm = 1;
peak_hrs_sm = 17;

sim_usage_sm_peak = [0.2357, 0.7643];
MR_sm_peak = getMarginalRevenue(add_rec_sm, sim_usage_sm_peak, 9, 180);

sim_usage_sm_pre = [0.5196, 0.4498];
MR_sm_pre = getMarginalRevenue(add_rec_sm, sim_usage_sm_pre, 9, (peak_hrs_sm - 6) * 60);

sim_usage_sm_post = [0.5906, 0.3906];
MR_sm_post = getMarginalRevenue(add_rec_sm, sim_usage_sm_post, 9, (23 - peak_hrs_sm) * 60);



MR_peak_all = {MR_mr_peak, MR_hr_peak, MR_le_peak, MR_lp_peak, MR_lp_pl_peak, MR_p_pl_peak, MR_r_pl_peak, MR_sp_pl_peak, MR_sm_peak};

MR_pre_all = {MR_mr_pre, MR_hr_pre, MR_le_pre, MR_lp_pre, MR_lp_pl_pre, MR_p_pl_pre, MR_r_pl_pre, MR_sp_pl_pre, MR_sm_pre};

MR_post_all = {MR_mr_post, MR_hr_post, MR_le_post, MR_lp_post, MR_lp_pl_post, MR_p_pl_post, MR_r_pl_post, MR_sp_pl_post, MR_sm_post};


num_addition_types = size(MR_peak_all,2);
types = {'Multi Rack', 'Half Rack', 'Leg Extension', 'Leg Press', 'Leg Press (PL)', 'Pulldown (PL)', 'Row (PL)', ...
    'Shoulder Press (PL)', 'Smith Machine'};
num_additions = add_rec_mr + add_rec_hr + add_rec_le + add_rec_lp + add_rec_lp_pl + add_rec_p_pl + add_rec_r_pl + add_rec_sp_pl + add_rec_sm;

purchase_list_prioritized = cell(num_additions,4);

sum_exercise_hrs_peak_three_months = 37865;
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

filename = 'purchase_list_prioritized_schous.csv';    %must end in csv
writetable( cell2table(purchase_list_prioritized), filename, 'writevariablenames', false, 'quotestrings', true)
