% ROTATION SCHEDULE BISLETT, TREADMILLS GROUND FLOOR

usage_data = readtable('Treadmill Hours Bislett (1).csv');

ground_floor_indices = find(ismember(usage_data.Floor, 'Ground floor'));
usage_data_ground_floor = usage_data(ground_floor_indices,:);

treadmills = unique(usage_data_ground_floor.name);
accumulated_usage = zeros(length(treadmills),1);

for i = 1:length(treadmills)
    tm_indices = find(ismember(usage_data_ground_floor.name, treadmills{i}));
    tm_data = usage_data_ground_floor(tm_indices, :);
    accumulated_usage(i) = sum(tm_data.ExerciseHours);
end

tot_treadmill_data = table(treadmills, accumulated_usage);

sorted_data_high2low = sortrows(tot_treadmill_data, 'accumulated_usage', 'descend');
sorted_data_low2high = sortrows(tot_treadmill_data, 'accumulated_usage', 'ascend');

swap_list = table(sorted_data_high2low.treadmills, sorted_data_low2high.treadmills);
swap_list.Properties.VariableNames = {'Swap from', 'Swap to'};


% Current layout at Bislett, ground floor

tm_layout_bislett = [{'--'}, {'--'}, {'Treadmill T1'}, {'Treadmill T2'}, {'Treadmill T3'}, {'Treadmill T4'}, {'Treadmill T5'}, {'Treadmill T6'}, {'Treadmill T7'}, {'Treadmill T8'}, {'Treadmill T9'}, {'Treadmill T10'},{'Treadmill T11'}, {'Treadmill T12'}, {'--'} ;
    {'Treadmill T27'},{'Treadmill T26'},{'Treadmill T25'}, {'Treadmill T24'}, {'Treadmill T23'}, {'Treadmill T22'}, {'Treadmill T21'}, {'Treadmill T20'}, {'Treadmill T19'}, {'Treadmill T18'}, {'Treadmill T17'}, {'Treadmill T16'},{'Treadmill T15'}, {'Treadmill T14'}, {'Treadmill T13'}]; 

checklist = sorted_data_high2low.treadmills;
done = false;

for i = 1:(round(size(tot_treadmill_data,1) / 2))
% while (~isempty(checklist))
%     center = 1;    
    usage_current_swap = sorted_data_low2high.accumulated_usage(i);
    treadmill_current = sorted_data_high2low.treadmills{i};
    treadmill_current_swap = sorted_data_low2high.treadmills{i};
    

    
    current_distance = 0;
    
    detected = false;
    neigh_size = 1;
    
    while (~detected)
            
            if (strcmp(treadmill_current, treadmill_current_swap))
                break; 
            end
        
        
            border = ones(neigh_size*2+1); % Your square matrices
            border(2:end-1,2:end-1) = 0; % Middle of matrices set to zero

            M = zeros(size(tm_layout_bislett));
            [row,col] = find(ismember(tm_layout_bislett, treadmill_current));
            M(row, col) = 1;
            neighbors = tm_layout_bislett(conv2(M,border,'same')>0);
            
            for n = 1:length(neighbors)
               if (strcmp(neighbors(n), treadmill_current_swap))
                    detected = true;
                    current_distance = neigh_size;
               end
            end
            
            neigh_size = neigh_size + 1;

    end
    
    disp(current_distance);
    
    adj_distances = zeros(1,3);
    
    for adj_index = 1:3
        
        if (strcmp(treadmill_current, treadmill_current_swap))
            break; 
        end
        
        neigh_size = 1;
        detected = false;
        treadmill_search = sorted_data_low2high.treadmills{i+adj_index};
        
        if (strcmp(treadmill_current, treadmill_search))
            break; 
        end
        
        while (~detected)
            
            border = ones(neigh_size*2+1); % Your square matrices
            border(2:end-1,2:end-1) = 0; % Middle of matrices set to zero

            M = zeros(size(tm_layout_bislett));
            [row,col] = find(ismember(tm_layout_bislett, treadmill_current));
            M(row, col) = 1;
            neighbors = tm_layout_bislett(conv2(M,border,'same')>0);
            
            for n = 1:length(neighbors)
               if (strcmp(neighbors(n), treadmill_search))
                    detected = true;
                    adj_distances(adj_index) = neigh_size;
               end
            end
            neigh_size = neigh_size + 1;

        end
     
        
    end
    
    if (min(adj_distances) < current_distance)
        
        adj_min_index = find(adj_distances == min(adj_distances));
        if (length(adj_min_index) > 1)
            adj_min_index = adj_min_index(1);
        end
        temp = swap_list.("Swap to")(i + adj_min_index);

        
        for k = 0:(adj_min_index-1)
            swap_list.("Swap to")(i + adj_min_index - k) = swap_list.("Swap to")(i + adj_min_index - k - 1);
        end
        swap_list.("Swap to")(i) = temp;
        
%         if (sum(ismember(checklist, swap_list.("Swap from")(i))) == 1)
%             checklist_index = find(ismember(checklist, swap_list.("Swap from")(i)));
%             checklist(checklist_index) = [];
%         end
%         
%         if (sum(ismember(checklist, swap_list.("Swap to")(i))) == 1)
%             checklist_index = find(ismember(checklist, swap_list.("Swap to")(i)));
%             checklist(checklist_index) = [];
%         end
        
%         if (sum(isempty(checklist)) == 0)
%            for s = (i+1):size(swap_list,1)
%               swap_list.("Swap from")(s) = [];
%               swap_list.("Swap to")(s) = [];
%            end
%         end
%                
        

    
   
    
   disp(adj_distances)
   disp('-------------------------------')
    end
       
end
    

swap_list

% i = 1; 
% while(~isempty(checklist) && i <= size(swap_list,1))
%     if ~(strcmp(swap_list.("Swap from"){i},swap_list.("Swap to"){i}))
%     index = find(ismember(swap_list.("Swap from"), swap_list.("Swap to")(i)));
% %     swap_list.("Swap to")(index) = [];
%     
%     checklist(find(ismember(checklist, swap_list.("Swap from")(i)))) = [];
%     checklist(find(ismember(checklist, swap_list.("Swap to")(i)))) = [];
%     swap_list(index,:) = [];
%     end
%     i = i+1;
%     
% 
% end
