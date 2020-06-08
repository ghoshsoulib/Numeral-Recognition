cmn_fld = 'E:\collage_research_work\DATA\shadow paper datatset\nepali_numerals\';
savefile = 'E:\collage_research_work\hopp digit\noise CSV\b.csv';
csv = fopen(savefile, 'w');
maxm = 20+75+75+1;
for i=1:maxm
    st = strcat('attr_', num2str(i));
    fprintf(csv, '%s,',st);
end
fprintf(csv,'\n');
for i = 0:9
    
    a = num2str(i);
    folder_in = strcat(cmn_fld,a,'\');
    
    listing = dir(strcat(folder_in,'*.','jpg'));
    file_names = {listing.name};
    num_pages = length(file_names);
    for j = 1:num_pages
        img = imread(strcat(folder_in,file_names{j}));
        [~,~,w] = size(img);
        if(w==3)
            img = rgb2gray(img);
        end
        
        img = imresize(img,[64 64]);
        %img = imnoise(img,'salt & pepper',noise);
        img = imbinarize(img);
        
        x = local_area( img,14); %%%%%
        y = local_area_per( img,14);
        z = shadow_main_function( img );
        
        a = [x y z];
        
        class = strcat('a',num2str(i));
        
        l = length(a);
        for k=1:l
            fprintf(csv, '%f,', a(k));
        end
        
        fprintf(csv, '%s\n', class);
        
    end
    
end

fclose(csv);




