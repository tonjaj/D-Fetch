

h = 0.1;
a = 1.2;
b = 0.6;
c = 0.1;

num_multi_rack = 8;
su_multi_rack = [0, 0.13, 0.42, 0.70, 1.16, 2.69, 11.18, 45.63, 38.10];
[~, avg_der_mr, avg_der2_mr] = getSimUsage(su_multi_rack, num_multi_rack, h, 1, 'Multi Racks');
% if (avg_der_mr < 0 && abs(avg_der2_mr) < 0.5 && su_multi_rack(end) <= 30)
%     ind_mr = 0;
% else
%     ind_mr = a*su_multi_rack(end) + b*avg_der_mr + c*avg_der2_mr;
% end
% add_mr = (num_multi_rack * (1 + ind_mr/100)) - num_multi_rack
add_mr = AdditionRule(su_multi_rack(end), avg_der_mr, avg_der2_mr, num_multi_rack)
disp('-----------------------------------------------------');
% disp(avg_der_mr);
% disp(avg_der2_mr);

num_normal_rower = 4;
su_normal_rower = [6.35, 22.22, 31.55, 31.94, 7.94];
[~, avg_der_nr, avg_der2_nr] = getSimUsage(su_normal_rower, num_normal_rower, h, 2, 'Normal Rowers');
% if (avg_der_nr < 0 && abs(avg_der2_nr) < 0.5)
%     ind_nr = 0;
% else
%     ind_nr = a*su_normal_rower(end) + b*avg_der_nr + c*avg_der2_nr;
% end
% add_nr = (num_normal_rower * (1 + ind_nr/100)) - num_normal_rower
add_nr = AdditionRule(su_normal_rower(end), avg_der_nr, avg_der2_nr, num_normal_rower)
disp('-----------------------------------------------------');
% disp(avg_der_nr);
% disp(avg_der2_nr);

num_threadmill = 37;
su_threadmill = [0, 0, 0, 0, 0.2, 0.39, 0.60, 1.0, 0.99, 1.39, 1.60, 1.98, 2.38, 3.37, 3.37, 3.97, 3.97, 5.0, 5.16, 5.75, 6.7, 6.94, 9.13, 7.74, 5.16, 4.76, 4.17, 2.38, 2.38, 0.79, 1.0, 0.40, 0, 0, 0, 0, 0, 0];
[~, avg_der_tm, avg_der2_tm] = getSimUsage(su_threadmill, num_threadmill, h, 3, 'Threadmills');
% if (avg_der_tm < 0 && abs(avg_der2_tm) < 0.5)
%     ind_tm = 0;
% else    
%     ind_tm = a*su_threadmill(end) + b*avg_der_tm + c*avg_der2_tm;
% end
% add_tm = (num_threadmill * (1 + ind_tm/100)) - num_threadmill
add_tm = AdditionRule(su_threadmill(end), avg_der_tm, avg_der2_tm,num_threadmill)
disp('-----------------------------------------------------');
% disp(avg_der_tm);
% disp(avg_der2_tm);

num_upright_bike = 4;
su_upright_bike = [4.17, 14.15, 23.88, 32.61, 25.20];
[~, avg_der_ub, avg_der2_ub] = getSimUsage(su_upright_bike, num_upright_bike, h, 4, 'Upright Bikes');
% if (avg_der_ub < 0 && abs(avg_der2_ub) < 0.5)
%     ind_ub = 0;
% else
%     ind_ub = a*su_upright_bike(end) + b*avg_der_ub + c*avg_der2_ub;
% end
% add_ub = (num_upright_bike * (1 + ind_ub/100)) - num_upright_bike
add_ub = AdditionRule(su_upright_bike(end), avg_der_ub, avg_der2_ub, num_upright_bike)
disp('-----------------------------------------------------');
% disp(avg_der_ub);
% disp(avg_der2_ub);

num_abdominal_crunch = 1;
su_abdominal_crunch = [10, 90];
[~, avg_der_ac, avg_der2_ac] = getSimUsage(su_abdominal_crunch, num_abdominal_crunch, h, 5, 'Abdominal Crunch');
% if (avg_der_ac < 0 && abs(avg_der2_ac) < 0.5)
%     ind_ac = 0;
% else
%     ind_ac = a*su_abdominal_crunch(end) + b*avg_der_ac + c*avg_der2_ac;
% end
% add_ac = (num_abdominal_crunch * (1 + ind_ac/100)) - num_abdominal_crunch
add_ac = AdditionRule(su_abdominal_crunch(end), avg_der_ac, avg_der2_ac, num_abdominal_crunch)
disp('-----------------------------------------------------');
% disp(avg_der_ac);
% disp(avg_der2_ac);

num_abdominal = 1;
su_abdominal = [33.93, 66.07];
[~, avg_der_ab, avg_der2_ab] = getSimUsage(su_abdominal, num_abdominal, h, 6, 'Abdominal');
% if (avg_der_ab < 0 && abs(avg_der2_ab) < 0.5)
%     ind_ab = 0;
% else
%     ind_ab = a*su_abdominal(end) + b*avg_der_ab + c*avg_der2_ab;
% end
% add_ab = (num_abdominal * (1 + ind_ab/100)) - num_abdominal
add_ab = AdditionRule(su_abdominal(end), avg_der_ab, avg_der2_ab, num_abdominal)
disp('-----------------------------------------------------');
% disp(avg_der_ab);
% disp(avg_der2_ab);

num_adj_pulley = 7;
su_adj_pulley = [0, 0.17, 0.56, 2.45, 6.94, 14.19, 29.66, 46.03];
[~, avg_der_pull, avg_der2_pull] = getSimUsage(su_adj_pulley, num_adj_pulley, h, 7, 'Adj. Pulley');
% if (avg_der_pull < 0 && abs(avg_der2_pull) < 0.5)
%     ind_pull = 0;
% else
%     ind_pull = a*su_adj_pulley(end) + b*avg_der_pull + c*avg_der2_pull;
% end
% add_pull = (num_adj_pulley * (1 + ind_pull/100)) - num_adj_pulley
add_pull = AdditionRule(su_adj_pulley(end), avg_der_pull, avg_der2_pull, num_adj_pulley)
disp('-----------------------------------------------------');
% disp(avg_der_pull);
% disp(avg_der2_pull);

num_adj_cross_cable = 2;
su_adj_cross_cable = [3.97, 25.00, 71.03];
[~, avg_der_cross, avg_der2_cross] = getSimUsage(su_adj_cross_cable, num_adj_cross_cable, h, 8, 'Adj. Crossover Cable');
% if (avg_der_cross < 0 && abs(avg_der2_cross) < 0.5)
%     ind_cross = 0;
% else
%     ind_cross = a*su_adj_cross_cable(end) + b*avg_der_cross + c*avg_der2_cross;
% end
% add_cross = (num_adj_cross_cable * (1 + ind_cross/100)) - num_adj_cross_cable
add_cross = AdditionRule(su_adj_cross_cable(end), avg_der_cross, avg_der2_cross, num_adj_cross_cable)
disp('-----------------------------------------------------');
% disp(avg_der_cross);
% disp(avg_der2_cross);




% k = 1; % tuning parameter
% if (indicator < 0)
%     gain = k/indicator;
% else
%     gain = k * indicator;
% end


