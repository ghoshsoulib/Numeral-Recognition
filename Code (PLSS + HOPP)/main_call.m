folder = 'E:\collage_research_work\hopp digit\seperate_new\2\';


savefile = ('E:\collage_research_work\hopp digit\CSV\part2.csv');
csv = fopen(savefile, 'w');
maxm = 20+75+75+1;
for i=1:maxm
    st = strcat('attr_', num2str(i));
    fprintf(csv, '%s,',st);
end
fprintf(csv,'\n');


files = dir(folder);
l = length(files);

for i = 3:l
    
    name = files(i).name
    noofpic = length(name);
    
    folder_in = strcat(folder, name, '\');
    files_in = dir(folder_in);
    l_in = length(files_in);
    
    for loop = 3:l_in
        
        folder_in_in = strcat(folder_in, files_in(loop).name, '\');
        
        listing = dir(strcat(folder_in_in,'*.','bmp'));
        file_names = {listing.name};
        num_pages = length(file_names);
        
        if(num_pages == noofpic)
            for j = 1:num_pages
                img = imread(strcat(folder_in_in,file_names{j}));
                
                [~,~,w] = size(img);
                if (w==3)
                    
                    img = rgb2gray(img);
                end
                
                img = imbinarize(img);
                img = imresize(img,[64 64]);
                x = local_area( img,14); %%%%%
                y = local_area_per( img,14);
                z = shadow_main_function( img );
                
                a = [x y z];
                
                class = strcat('a',name(j));
                
                l = length(a);
                for k=1:l
                    fprintf(csv, '%f,', a(k));
                end
                
                fprintf(csv, '%s\n', class);
                
            end
        end
        
    end
    
end

fclose(csv);
