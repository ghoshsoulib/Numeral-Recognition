folder = 'E:\collage_research_work\hopp digit\Segmented\';
folder_out = 'E:\collage_research_work\hopp digit\seperate_new\';
files = dir(folder);
l = length(files);

for i=3:l
    name = files(i).name;
    C = strsplit(name, '-');
    classString = C{1};
    MyFolder = strcat(folder_out, classString);
    
    if ~exist(MyFolder, 'dir')
        mkdir(MyFolder);
    end
    
    current_dir = strcat(folder, name);
    outdir = strcat(MyFolder, '\', name);
    mkdir(outdir);
    copyfile(current_dir, outdir);
end
