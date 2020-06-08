%%%%%%   batchFormation()

function [all_hist]=batchFormation(dir_in, file_ext)
disp('WAIT! Execution begining...');

% list of files in the directory name with the input file extension
listing = dir(strcat(dir_in,'*.',file_ext));
file_names = {listing.name};

% number of pages in the directory with this file extension
num_pages = length(file_names);

%display(num_pages);
fprintf('Total number of pages = %d\n', num_pages);
 all_hist = [];
% process all pages in the directory
savefile = 'E:\collage_research_work\feature\new method\beng_a+p_1.csv';
csv = fopen(savefile, 'w');
for i = 1:num_pages
    dd = file_names{i};
    imgNum = str2double(dd(end-4));
  
    fprintf('Processing page No: %d\n', i);    
    
   
    % load the image from the directory
    img = imread(strcat(dir_in,file_names{i}));
    img = imresize(img,[48 48]);
    img = rgb2gray(img);
    %l = local_hist_grad( img );
    img = im2bw(img);
    
    
    %x  = shadow_main_function( img );
    y = local_area( img,14);
    z = local_area_per( img,14);
    
    
    a = [y z];
    
    class = strcat('a',num2str(imgNum));
    
    l = length(a);
    for k=1:l
        fprintf(csv, '%f,', a(k));
    end
    
    fprintf(csv, '%s\n', class);

end


disp('WOW! Successful Execution...');

fclose(csv);
end
