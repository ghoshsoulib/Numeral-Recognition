function [ final_dist ] = left_bottom_length( img, data_list )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

[r,c] = size(img);
[l,~] = size(data_list);

if l ~=0
    %up side count
    len = [];
    final_flag = 0;
    count = 0;
    for i = 1:c
        
        start = [r 1];
        final = [1 i];
        flag = 0;
        for j=1:l
            flag = is_present_on_line( start, final, data_list(j,:));
            if flag == 1
                if final_flag == 1
                    count = count + 1;
                end
                break;
            end
        end
        if (final_flag == 1 && flag == 0)
            len = [len count];
            count = 0;
        end
        final_flag = flag;
    end
    len = [len count];
    dist1 = sum(len);
    
    %right side count
    len = [];
    final_flag = 0;
    count = 0;
    for i = 1:r
        
        start = [r 1];
        final = [i c];
        flag = 0;
        for j=1:l
            flag = is_present_on_line( start, final, data_list(j,:));
            if flag == 1
                if final_flag == 1
                    
                    count = count + 1;
                end
                break;
            end
        end
        if (final_flag == 1 && flag == 0)
            len = [len count];
            count = 0;
        end
        final_flag = flag;
    end
    len = [len count];
    dist2 = sum(len);
    
    final_dist = dist1 + dist2;
    
else
    final_dist = 0;
end


end


