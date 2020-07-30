
       
%  multi_rack_data_fitted = zeros(1,144);
%  time_10min = zeros(1,144);
%  for i = 1:108
%      time_10min(i) = 30 + i * 24/108;
%      multi_rack_data_fitted(i) = f(time_10min(i)); 
%  end


% Plot data

multi_rack_num = 8;
multi_rack_data = multi_rack_num * (ones(1,19) - [0.95, 0.48, 0.32, 0.40, 0.37, 0.25, 0.25, 0.25, 0.29, 0.29, 0.23, 0.13, 0.07, 0.07, 0.10, 0.15, 0.37, 0.56, 0.93]); 
time = [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23];
time_15 = 5:0.25:23;

max_lim = multi_rack_num * 0.85;
multi_rack_data_fitted = spline(time,multi_rack_data,time_15)
thresh = max_lim * ones(1,length(multi_rack_data));


figure(1)
hold on;
plot(time, multi_rack_data,'o', time_15, multi_rack_data_fitted); %, 'Color', 'black', 'Linewidth', 1.5);
plot(time, thresh, 'Color', [1,165/255, 0], 'Linewidth', 1.5);

L1 = [time ; thresh];
L2 = [time_15 ; multi_rack_data_fitted];
P = InterX(L1,L2)
plot(P(1,:), P(2,:), 'or');
for i = 1:size(P,1)
    if (mod(i,2))
       type = 'start'; 
    else
        type = 'end';
    end
    t_intersect = P(1,i);
    [tangent_line, time_range] = getTangentLine(t_intersect, type, time_15, multi_rack_data_fitted, max_lim);
    plot(time_range, tangent_line, '--');
end

ylim([0 10]);
xlabel('time [hours]');
ylabel('simulatenous usage [%]');
grid on;


T = readtable('adj_pulley');
num_assets = 7;
max_lim = 0.85; % tuning parameter

multi_rack_10m = num_assets * (ones(1,581)- T.Var2');
% multi_rack_10m =  multi_rack_num * (ones(1,103) - multi_rack_10m);
time_10m = 0:10:((10*length(multi_rack_10m)) - 10);
time_10m_fitted = 0:5:((10*length(multi_rack_10m)) - 10);
% time_percent = 6:0.01:23;
multi_rack_10m_fitted = spline(time_10m, multi_rack_10m, time_10m_fitted);
thresh = max_lim * num_assets * ones(1,length(multi_rack_10m_fitted));

figure(2)
hold on;
plot(time_10m_fitted, multi_rack_10m_fitted); %, 'Color', 'black', 'Linewidth', 1.5);
plot(time_10m_fitted, thresh, 'Color', [1,165/255, 0], 'Linewidth', 1.5);
L12 = [time_10m_fitted ; thresh];
L22 = [time_10m_fitted ; multi_rack_10m_fitted];
P2 = InterX(L12,L22);
plot(P2(1,:), P2(2,:), 'or');
% for i = 1:(size(P2,2)-4)
%    if (abs(mean(diff(P2(1,i:(i+4))))) < 0.01)
%        P2(:,i) = [];
%        disp('deleted col');
%    end
% end
for i = 1:size(P2,2)
    if (mod(i,2))
       type = 'start'; 
    else
        type = 'end';
    end
    t_intersect = P2(1,i);
    [tangent_line, time_range] = getTangentLine2(t_intersect, type, time_10m_fitted, multi_rack_10m_fitted, max_lim * num_assets);
    plot(time_range, tangent_line, '--');
end
ylim([0 (num_assets*2)]);
xlabel('time [hours]');
ylabel('simulatenous usage [%]');
grid on;

