% TASK DESC

% % Grunnlag:
% Bruksdata på spesifikt utstyr
% Bruksdata per type
% Historisk data vs. I dag
% Kontinuerlig bruk
% Terskel på bruk for at utstyret skal vurderes eller ikke

% % Vurderingspunkter for Malfunction Indicator:
% 1) Se på bruksdataen til spesifikk tredemølle (hvordan er denne bruken kontra resten av tredemøllene)
% 2) Se på dagens bruk for spesifikk, kontra samme dag i X måneder: er det en X drop % i bruk?
% 3) Se på dagens bruk for spesifikk, kontra dagen før: er det en X drop i % bruk?
% 4) Blir møllen brukt mer enn X minutter i strekk ila Y dager/dagen?


% data = readtable('treadmills_bislett_feb1_mar11.csv');

data.time = string(data.time);
treadmills = unique(data.label);

% Day of interest
curr_day_data = fetchDay(data, '08', '02', '2020');

% One day earlier
ode_data = fetchDay(data, '07', '02', '2020');

% One week earlier
owe_data = fetchDay(data, '01', '02', '2020');
owe_exercise_hrs = sum(owe_data.motion);

curr_day_sum_exercise_hrs = 0;

usage_comparison = cell2table(cell(length(treadmills),7));
usage_comparison.Properties.VariableNames = {'label', 'curr_day_usage', 'owe_usage', 'ode_usage', 'usage_diff_owe', 'usage_diff_ode', 'max_continuity'};

malfunction_check = cell2table(cell(length(treadmills),7));
malfunction_check.Properties.VariableNames = {'label', 'usage_level', 'average', 'one_week_earlier', 'one_day_earlier', 'continuity', 'sum'};

for i = 1:length(treadmills)
   
    tm_curr_day_data = curr_day_data(find(ismember(curr_day_data.label, treadmills(i))),:);
    tm_owe_data = owe_data(find(ismember(owe_data.label, treadmills(i))),:);
    tm_ode_data = ode_data(find(ismember(ode_data.label, treadmills(i))),:);

    
    tm_curr_day_exercise_hrs = sum(tm_curr_day_data.motion) / 60;
    usage_comparison.curr_day_usage{i} = tm_curr_day_exercise_hrs;
    
    tm_owe_exercise_hrs = sum(tm_owe_data.motion) / 60;
    usage_comparison.owe_usage{i} = tm_owe_exercise_hrs;

    tm_ode_exercise_hrs = sum(tm_ode_data.motion) / 60;
    usage_comparison.ode_usage{i} = tm_ode_exercise_hrs;

    
    usage_comparison.label(i) = treadmills(i);
    
    tm_usage_diff_owe = ( tm_curr_day_exercise_hrs / tm_owe_exercise_hrs ) - 1;
    if (tm_usage_diff_owe ~= Inf)
        usage_comparison.usage_diff_owe{i} = tm_usage_diff_owe;
    else
        usage_comparison.usage_diff_owe{i} = 100;
    end
    
    tm_usage_diff_ode = ( tm_curr_day_exercise_hrs / tm_ode_exercise_hrs ) - 1;
    if (tm_usage_diff_ode ~= Inf)
        usage_comparison.usage_diff_ode{i} = tm_usage_diff_ode;
    else
        usage_comparison.usage_diff_ode{i} = 100;
    end
    
    max_count = 0;
    count = 0;
    for j = 1:length(tm_curr_day_data.motion)
        if (tm_curr_day_data.motion(j) == 1)
            count = count + 1;
        elseif (tm_curr_day_data.motion(j) == 0) 
            if (count > max_count)
                max_count = count;
            end
            count = 0;
        end
    end
    
    usage_comparison.max_continuity{i} = max_count;
    
end

curr_day_avg_usage = sum(cell2mat(usage_comparison.curr_day_usage)) / length(treadmills);


 
for i = 1:length(treadmills)
    
    malfunction_check.label(i) = treadmills(i);
    
    % Less than 0.5% usage
    if (usage_comparison.curr_day_usage{i} < 0.0075)
        malfunction_check.usage_level{i} = true;
    else
        malfunction_check.usage_level{i} = false;
    end

    % Less than 10% of average usage? 
    if (usage_comparison.curr_day_usage{i} < 0.1 * curr_day_avg_usage)
        malfunction_check.average{i} = true;
    else
        malfunction_check.average{i} = false;
    end
    
    % More than 90 % reduction from week before?
    if (usage_comparison.usage_diff_owe{i} < -0.9)
        malfunction_check.one_week_earlier{i} = true;
    else
        malfunction_check.one_week_earlier{i} = false;
    end 
    
    % More than 70% reduction from day before OR low usage level day before as
    % well?
    if (usage_comparison.usage_diff_ode{i} < -0.7 || usage_comparison.ode_usage{i} < 0.075 )
        malfunction_check.one_day_earlier{i} = true;
    else
        malfunction_check.one_day_earlier{i} = false;
    end      
    
    % Less than 10 minutes of maximum continuous use?
    if (usage_comparison.max_continuity{i} < 10)
        malfunction_check.continuity{i} = true;
    else
        malfunction_check.continuity{i} = false;
    end
    
    malfunction_check.sum{i} = sum(cell2mat(malfunction_check{i,2:6}));
    

end


