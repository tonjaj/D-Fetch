function [der2, avg_der, avg_der2] = getSimUsage(data,num_assets, h, fig_num, fig_name)
%GETSIMUSAGE Summary of this function goes here
%   Detailed explanation goes here
x_init = 0:1:num_assets;
x_interp = 0:h:num_assets;
interpolated_data = spline(x_init, data, x_interp);

der = diff(interpolated_data)/h;
der2 = diff(der)/h;
bactrack_range = floor(0.25 * num_assets * 1/h);
sub = der((end-bactrack_range):end);
sub2 = der2((end-bactrack_range):end);
% avg = mean(der2);
avg_der = mean(sub);
avg_der2 = mean(sub2);

figure(fig_num)
hold on;
plot(x_init, data ,'o', x_interp, interpolated_data);
xlabel('Number of assets in use');
ylabel('Simulatenous usage time [%]');
title(fig_name);
grid on;


end

