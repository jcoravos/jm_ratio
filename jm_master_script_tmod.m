%% Master Script for juntional master

pixelErosion = 4

j.tmod_vent = []
j.tmod_lat = []
j.mbs_vent = []
j.mbs_lat = []
j.add_vent = []
j.add_lat = []
j.myo_vent = []
j.myo_lat = []
j.ecad_vent = []
j.ecad_lat = []

m.tmod_vent = []
m.tmod_lat = []
m.mbs_vent = []
m.mbs_lat = []
m.add_vent = []
m.add_lat = []
m.myo_vent = []
m.myo_lat = []
m.ecad_vent = []
m.ecad_lat = []

%% tmod ventral
image = {'/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image0_122015_apical/Image0_122015_apical_c002.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image4_122015_apical/Image4_122015_apical_c002.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image6_122015_apical/Image6_122015_apical_c002.tif'...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image7_122015_apical/Image7_122015_apical_c002.tif'};
         

fileName = {'Image0_122015_apical',...
            'Image4_122015_apical',...
            'Image6_122015_apical',...
            'Image7_122015_apical'};

pixelConversion = [0.093,0.086,0.093,0.096]
        
edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion(i),pixelErosion);
    j.tmod_vent = cat(2,j.tmod_vent,jun);
    m.tmod_vent = cat(2,m.tmod_vent,med);
    clear jun med
end

%% mbs ventral
image = {'/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image0_122015_apical/Image0_122015_apical_c003.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image4_122015_apical/Image4_122015_apical_c003.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image6_122015_apical/Image6_122015_apical_c003.tif'...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image7_122015_apical/Image7_122015_apical_c003.tif'};
         

fileName = {'Image0_122015_apical',...
            'Image4_122015_apical',...
            'Image4.1_122015_apical',...
            'Image6_122015_apical',...
            'Image7_122015_apical'};
        
pixelConversion = [0.093,0.086,0.093,0.096]

edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion(i),pixelErosion);
    j.mbs_vent = cat(2,j.mbs_vent,jun);
    m.mbs_vent = cat(2,m.mbs_vent,med);
    clear jun med
end

%% adducin ventral
image = {'/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image0_122015_apical/Image0_122015_apical_c001.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image4_122015_apical/Image4_122015_apical_c001.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image6_122015_apical/Image6_122015_apical_c001.tif'...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image7_122015_apical/Image7_122015_apical_c001.tif'};
         

fileName = {'Image0_122015_apical',...
            'Image4_122015_apical',...
            'Image6_122015_apical',...
            'Image7_122015_apical'};
        
pixelConversion = [0.093,0.086,0.093,0.096]

edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion(i),pixelErosion);
    j.add_vent = cat(2,j.add_vent,jun);
    m.add_vent = cat(2,m.add_vent,med);
    clear jun med
end

%% tmod lateral
image = {'/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image1_122015_lateral/Image1_122015_lateral_c002.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image5_122015_lateral/Image5_122015_lateral_c002.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image4.1_122015_apical/Image4.1_122015_apical_ventrolateral_c002.tif'};
         

fileName = {'Image1_122015_lateral',...
            'Image5_122015_lateral',...
            'Image4.1_122015_apical'};
pixelConversion = [0.095,0.093,0.086]
        
edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion(i),pixelErosion);
    j.tmod_lat = cat(2,j.tmod_lat,jun);
    m.tmod_lat = cat(2,m.tmod_lat,med);
    clear jun med
end

%% mbs lateral
image = {'/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image1_122015_lateral/Image1_122015_lateral_c003.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image5_122015_lateral/Image5_122015_lateral_c003.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image4.1_122015_apical/Image4.1_122015_apical_ventrolateral_c003.tif'};
         

fileName = {'Image1_122015_lateral',...
            'Image5_122015_lateral',...
            'Image4.1_122015_apical'};
        
pixelConversion = [0.095,0.093,0.086]

edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion(i),pixelErosion);
    j.mbs_lat = cat(2,j.mbs_lat,jun);
    m.mbs_lat = cat(2,m.mbs_lat,med);
    clear jun med
end

%% add lateral
image = {'/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image1_122015_lateral/Image1_122015_lateral_c001.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image5_122015_lateral/Image5_122015_lateral_c001.tif',...
         '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image4.1_122015_apical/Image4.1_122015_apical_ventrolateral_c003.tif'};
         

fileName = {'Image1_122015_lateral',...
            'Image5_122015_lateral',...
            'Image4.1_122015_apical'};

edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';

pixelConversion = [0.095,0.093,0.086]

for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion(i),pixelErosion);
    j.add_lat = cat(2,j.add_lat,jun);
    m.add_lat = cat(2,m.add_lat,med);
    clear jun med
end

%% myo ventral
image = {'/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image1_111013/Image1_111013_c001.tif',...
         '/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image13_111013/Image13_111013_c001.tif',...
         '/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image14_111013/Image14_111013_c001.tif'};
         

fileName = {'Image1_111013',...
            'Image13_111013',...
            'Image14_111013'};

pixelConversion = [0.099,0.095,0.094]

edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion(i),pixelErosion);
    j.myo_vent = cat(2,j.myo_vent,jun);
    m.myo_vent = cat(2,m.myo_vent,med);
    clear jun med
end

%% Ecad ventral
image = {'/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image1_111013/Image1_111013_c002.tif',...
         '/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image13_111013/Image13_111013_c002.tif',...
         '/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image14_111013/Image14_111013_c002.tif'};
         

fileName = {'Image1_111013',...
            'Image13_111013',...
            'Image14_111013'};

pixelConversion = [0.099,0.095,0.094]

edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion(i),pixelErosion);
    j.ecad_vent = cat(2,j.ecad_vent,jun);
    m.ecad_vent = cat(2,m.ecad_vent,med);
    clear jun med
end

%% Myo lateral
image = {'/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image1_111013/Image1_111013_c001.tif',...
         '/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image13_111013/Image13_111013_c001.tif'};
       

fileName = {'Image1_111013_lateral',...
            'Image13_111013_lateral'};

pixelConversion = [0.099,0.095]

edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion(i),pixelErosion);
    j.myo_lat = cat(2,j.myo_lat,jun);
    m.myo_lat = cat(2,m.myo_lat,med);
    clear jun med
end

%% Ecad lateral
image = {'/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image1_111013/Image1_111013_c002.tif',...
         '/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image13_111013/Image13_111013_c002.tif'};
       

fileName = {'Image1_111013_lateral',...
            'Image13_111013_lateral'};

pixelConversion = [0.099,0.095]
        
edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion(i),pixelErosion);
    j.ecad_lat = cat(2,j.ecad_lat,jun);
    m.ecad_lat = cat(2,m.ecad_lat,med);
    clear jun med
end



%% Plotting

myo_diff_ventral = (m.myo_vent - j.myo_vent)./(m.myo_vent + j.myo_vent);
myo_diff_lateral = (m.myo_lat - j.myo_lat)./(m.myo_lat + j.myo_lat);

ecad_diff_ventral = (m.ecad_vent - j.ecad_vent)./(m.ecad_vent + j.ecad_vent);
ecad_diff_lateral = (m.ecad_lat - j.ecad_lat)./(m.ecad_lat + j.ecad_lat);


add_diff_ventral = (m.add_vent - j.add_vent)./(m.add_vent + j.add_vent);
add_diff_lateral = (m.add_lat - j.add_lat)./(m.add_lat + j.add_lat);

mbs_diff_ventral = (m.mbs_vent - j.mbs_vent)./(m.mbs_vent + j.mbs_vent);
mbs_diff_lateral = (m.mbs_lat - j.mbs_lat)./(m.mbs_lat + j.mbs_lat);

tmod_diff_ventral = (m.tmod_vent - j.tmod_vent)./(m.tmod_vent + j.tmod_vent);
tmod_diff_lateral = (m.tmod_lat - j.tmod_lat)./(m.tmod_lat + j.tmod_lat);





%%
%{
colNames = {'Myosin','Ecadherin','Adducin','MBS','Tmod'}
figure,plotSpread(aggMat_vent,0.05,[],colNames)
hold on
boxplot(aggMat_vent,colNames)
title('Ventral Distributions')

colNames = {'Myosin','Ecadherin','Adducin','MBS','Tmod'}
figure,plotSpread(aggMat_lat,0.05,[],colNames)
hold on
boxplot(aggMat_lat,colNames)
title('Lateral Distributions')

%}

colNames2 = {'Ecadherin V','Ecadherin L','Adducin V','Adducin L','MBS V','MBS L','Tmod V','Tmod L'}
figure,plotSpread(aggMat_vent_lat([3:end],:)',0.05,[],colNames2)

hold on
boxplot(aggMat_vent_lat(3:end,:)',colNames2)
title('Lateral Distributions')
%%

figure,
boxplot(aggMat_vent_lat(3:end,:)',colNames2)

figure
[p,t,stats] = kruskalwallis(aggMat_vent_lat([2:end],:)');
c = multcompare(stats)

%%

figure, 
bar(nanmean(aggMat_vent_lat))
hold on
errorbar(nanmean(aggMat_vent_lat),nanstd(aggMat_vent_lat)./sqrt(numel(aggMat_vent_lat)))

