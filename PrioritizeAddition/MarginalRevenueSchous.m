% SCHOUS PLASS
% Peak three months: February 2020, January 2020, November 2019

% Multi Rack - Add.Rec: 3
add_rec_mr = 3;
sim_usage_mr = [0.0, 0.0013, 0.0026, 0.0219, 0.0763, 0.2651, 0.6328 ];
MR_mr = getMarginalRevenue(add_rec_mr, sim_usage_mr, 8, 180);

% Half Rack - Add.Rec.: 2
add_rec_hr = 2;
sim_usage_hr = [0.00, 0.0013, 0.0065, 0.0693, 0.3630, 0.5599];
MR_hr = getMarginalRevenue(add_rec_hr, sim_usage_hr, 8, 180);

% Leg Extension - Add.Rec.: 1
add_rec_le = 1;
sim_usage_le = [0.1263, 0.8737 ];
MR_le = getMarginalRevenue(add_rec_le, sim_usage_le, 9, 180);

% Leg Press - Add.Rec.: 1
add_rec_lp = 1;
sim_usage_lp = [0.1823, 0.8177];
MR_lp = getMarginalRevenue(add_rec_lp, sim_usage_lp, 9, 180);

% Leg Press (PL) - Add.Rec.: 1
add_rec_lp_pl = 1;
sim_usage_lp_pl = [0.1927, 0.8073];
MR_lp_pl = getMarginalRevenue(add_rec_lp_pl, sim_usage_lp_pl, 9, 180);

% Pulldown (PL) - Add.Rec.: 1
add_rec_p_pl = 1;
sim_usage_p_pl = [0.3164, 0.6836];
MR_p_pl = getMarginalRevenue(add_rec_p_pl, sim_usage_p_pl, 8, 180);

% Row (PL) - Add.Rec.: 1
add_rec_r_pl = 1;
sim_usage_r_pl = [0.1836, 0.8164];
MR_r_pl = getMarginalRevenue(add_rec_r_pl, sim_usage_r_pl, 9, 180);

% Shoulder Press (PL) - Add.Rec.: 1
add_rec_sp_pl = 1;
sim_usage_sp_pl = [0.2669, 0.7331];
MR_sp_pl = getMarginalRevenue(add_rec_sp_pl, sim_usage_sp_pl, 8, 180);


% Smith Machine - Add.Rec.: 1
add_rec_sm = 1;
sim_usage_sm = [0.2357, 0.7643];
MR_sm = getMarginalRevenue(add_rec_sm, sim_usage_sm, 9, 180);



MR_all = {MR_mr, MR_hr, MR_le, MR_lp, MR_lp_pl, MR_p_pl, MR_r_pl, MR_sp_pl, MR_sm};
num_addition_types = size(MR_all,2);
types = {'Multi Rack', 'Half Rack', 'Leg Extension', 'Leg Press', 'Leg Press (PL)', 'Pulldown (PL)', 'Row (PL)', ...
    'Shoulder Press (PL)', 'Smith Machine'};
num_additions = add_rec_mr + add_rec_hr + add_rec_le + add_rec_lp + add_rec_lp_pl + add_rec_p_pl + add_rec_r_pl + add_rec_sp_pl + add_rec_sm;
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