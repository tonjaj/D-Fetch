% BISLETT
% Peak three months: February 2020, January 2020, November 2019

% Adj. Crossover Cable - Add.Rec.: 2
add_rec_cc_adj = 2;
sim_usage_cc_adj = [0.02, 0.23, 0.75];
MR_cc_adj = getMarginalRevenue(add_rec_cc_adj, sim_usage_cc_adj, 0, 180);

% Multi Rack - Add.Rec: 6
add_rec_mr = 6;
sim_usage_mr = [0, 0, 0, 0.001, 0.007, 0.024, 0.086,0.307, 0.574 ];
MR_mr = getMarginalRevenue(add_rec_mr, sim_usage_mr, 0, 180);

% Lat. Pulldown - Add.Rec.: 3
add_rec_lp = 3;
sim_usage_lp = [0.004, 0.018, 0.088, 0.304, 0.586];
MR_lp = getMarginalRevenue(add_rec_lp, sim_usage_lp, 0, 180);

% Fixed Crossover Cable - Add.Rec.: 2
add_rec_cc_fxd = 2;
sim_usage_cc_fxd = [0.007, 0.076, 0.370, 0.548];
MR_cc_fxd = getMarginalRevenue(add_rec_cc_fxd, sim_usage_cc_fxd, 0, 180);

% Abdominal - Add.Rec.: 1
add_rec_ab = 1;
sim_usage_ab = [0.3255, 0.6745];
MR_ab = getMarginalRevenue(add_rec_ab, sim_usage_ab, 0, 180);

% Chest Incline - Add.Rec.: 1
add_rec_ci = 1;
sim_usage_ci = [0.3229, 0.6771];
MR_ci = getMarginalRevenue(add_rec_ci, sim_usage_ci, 0, 180);


% Chest Press - Add.Rec.: 1
add_rec_cp = 1;
sim_usage_cp = [0.1654, 0.8346];
MR_cp = getMarginalRevenue(add_rec_cp, sim_usage_cp, 0, 180);

% Chest Press (PL) - Add.Rec.: 1
add_rec_cp_pl = 1;
sim_usage_cp_pl = [0.2956, 0.6107];
MR_cp_pl = getMarginalRevenue(add_rec_cp_pl, sim_usage_cp_pl, 0, 180);

% Hip Thruster - Add.Rec.: 1
add_rec_ht = 1;
sim_usage_ht = [0.3073, 0.6927];
MR_ht = getMarginalRevenue(add_rec_ht, sim_usage_ht, 0, 180);


% Incline Bench Rack - Add.Rec.: 1
add_rec_ibr = 1;
sim_usage_ibr = [0.3424, 0.4544];
MR_ibr = getMarginalRevenue(add_rec_ibr, sim_usage_ibr, 0, 180);


% Leg Press (PL) - Add.Rec.: 1
add_rec_lp_pl = 1;
sim_usage_lp_pl = [0.2513, 0.7487];
MR_lp_pl = getMarginalRevenue(add_rec_lp_pl, sim_usage_lp_pl, 0, 180);

% Linear Leg Press (PL) - Add.Rec.: 1
add_rec_llp_pl = 1;
sim_usage_llp_pl = [0.2708, 0.7292];
MR_llp_pl = getMarginalRevenue(add_rec_llp_pl, sim_usage_llp_pl, 0, 180);


% Pulldown - Add.Rec.: 1
add_rec_p = 1;
sim_usage_p = [0.1641, 0.3411, 0.4896];
MR_p = getMarginalRevenue(add_rec_p, sim_usage_p, 0, 180);

% Row (PL) - Add.Rec.: 1
add_rec_r_pl = 1;
sim_usage_r_pl = [0.2539, 0.7292];
MR_r_pl = getMarginalRevenue(add_rec_r_pl, sim_usage_r_pl, 0, 180);

% Seated Row - Add.Rec.: 1
add_rec_sr = 1;
sim_usage_sr = [0.0352, 0.9648];
MR_sr = getMarginalRevenue(add_rec_sr, sim_usage_sr, 0, 180);

% Smith Machine - Add.Rec.: 1
add_rec_sm = 1;
sim_usage_sm = [0.0872, 0.2734, 0.6393];
MR_sm = getMarginalRevenue(add_rec_sm, sim_usage_sm, 0, 180);

% Wide Chest Press - Add.Rec.: 1
add_rec_wcp = 1;
sim_usage_wcp = [0.3763, 0.6237];
MR_wcp = getMarginalRevenue(add_rec_wcp, sim_usage_wcp, 0, 180);



MR_all = {MR_cc_adj, MR_mr, MR_lp, MR_cc_fxd, MR_ab, MR_ci, MR_cp, MR_cp_pl, MR_ht, MR_ibr, MR_lp_pl, MR_llp_pl, MR_p, MR_r_pl, MR_sr, MR_sm, MR_wcp};
num_addition_types = size(MR_all,2);
types = {'Adj. Crossover Cable', 'Multi Rack', 'Lat. Pulldown', 'Fixed Crossover Cable', 'Abdominal', 'Chest Incline', 'Chest Press', 'Chest Press (PL)', ...
    'Hip Thruster', 'Incline Bench Rack', 'Leg Press (PL)', 'Linear Leg Press (PL)', 'Pulldown', 'Row (PL)', 'Seated Row', 'Smith Machine', 'Wide Chest Press'};
num_additions = add_rec_cc_adj + add_rec_mr + add_rec_lp + add_rec_cc_fxd + add_rec_ab + add_rec_ci + add_rec_cp + add_rec_cp_pl + add_rec_ht + add_rec_ibr ...
    + add_rec_lp_pl + add_rec_llp_pl + add_rec_p + add_rec_r_pl + add_rec_sr + add_rec_sm + add_rec_wcp;
purchase_list_prioritized = cell(num_additions,2);

for i = 1:num_additions
    
    max_index = 1;
    for j = 2:size(MR_all,2)
       if (MR_all{j}(1) > MR_all{max_index}(1))
          max_index = j; 
       end
    end
    purchase_list_prioritized{i,1} = types{max_index};
    purchase_list_prioritized{i,2} = MR_all{max_index}(1);
    
    
    MR_all{max_index}(1) = [];
    if (isempty(MR_all{max_index}))
       types(max_index) = [];
       MR_all(max_index) = []; 
    end
    
end

disp(purchase_list_prioritized);
