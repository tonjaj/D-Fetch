% ROTATION SCHEDULING
% To facilitate even wear and tear, and consequently less frequent
% equipment damages

usage_data = readtable('Treadmill Hours Bislett (1).csv');

thresh_high = 130;    % yellow to red
thresh_low = 50;     % green to yellow


% usage_data_classified = cell(size(usage_data,1), 5);
% % usage_data_classified(:,1:4) = usage_data;
% usage_data_classified(:,1) = usage_data.YearMonthText;
% usage_data_classified(:,2) = usage_data.name;
% % usage_data_classified(:,3) = cell2table(usage_data.ExerciseHours);
% usage_data_classified(:,4) = usage_data.Floor;


% for j = 1:size(usage_data,1)
%     
%     usage_data_classified{j,3} = usage_data.ExerciseHours(j);
%     
%    if (usage_data.ExerciseHours(j) <= thresh_low)
%        usage_data_classified{j,5} = 'LOW';
%    elseif (usage_data.ExerciseHours(j) <= thresh_high)
%        usage_data_classified{j,5} = 'MID';
%    else
%        usage_data_classified{j,5} = 'HIGH';
%    end
% end

num_months = 12;
month_strings = unique(usage_data.YearMonthText);
floor_strings = unique(usage_data.Floor);



for i = 1:num_months
     
    month_index = find(ismember(usage_data.YearMonthText, month_strings{i}));
    usage_data_month =  usage_data(month_index, :);
    
    
    for j = 1:length(unique(usage_data.Floor))
        
        floor_index = find(ismember(usage_data_month.Floor, floor_strings{j}));
        usage_data_month_floor = usage_data_month(floor_index, :);
        
%         [~,ix] = sort(usage_data_month_floor{:,3});
%         high2low = sort(usage_data_month_floor(ix,:));
%         low2high = flip(high2low);
        
        high2low = sortrows(usage_data_month_floor, 3, 'descend')
        low2high = sortrows(usage_data_month_floor, 3, 'ascend')


%         for k = 1:size(high2low)
%             if (high2low.ExerciseHours(i) <= thresh_low)
%                 high2low{i,5} = 'LOW';
%                 low2high(size(high2low)+1 - i, 5) = 'LOW';
%             elseif (high2low.ExerciseHours(i) <= thresh_high)
%                 high2low{i,5} = 'MID';
%                 low2high(size(high2low)+1 - i, 5) = 'MID';
%             else
%                 high2low{i,5} = 'HIGH';
%                 low2high(size(high2low)+1 - i, 5) = 'HIGH';
%             end
%         end
        
    end
    
end