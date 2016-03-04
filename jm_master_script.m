%% Master Script for juntional master

pixelErosion = 4
pixelConversion = 0.09

j.noinj = []
j.shWhite = []
j.shDia = []

m.noinj = []
m.shWhite = []
m.shDia = []

%% no injection
image = {%'/Volumes/CORAVOS3/6715shDia(HMS)-568Dcad647MBS/Quantification/JSC_shDia_R1_GR1_B1_L03/sp_data/JSC_shDia_R1_GR1_B1_L03_z001_c002.tif',...
         %'/Volumes/CORAVOS3/6715shDia(HMS)-568adducin647MBS/Quantification/JSC_shDia_L13_Sum/sp_data/JSC_shDia_L13_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shDia(HMS)-568adducin647MBS/Quantification/JSC_shDia_L23_Sum/sp_data/JSC_shDia_L23_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shDia(HMS)-568adducin647MBS/Quantification/JSC_shDia_L25_Sum/sp_data/JSC_shDia_l25_Sum_z001_c002.tif'};
         

fileName = {%'6715shDia_Dcad_R1_GR1_B1_L03',...
            %'6715shDia_add_L13',...
            '6715shDia_add_L23',...
            '6715shDia_add_L25'};

edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion,pixelErosion);
    j.noinj = cat(2,j.noinj,jun);
    m.noinj = cat(2,m.noinj,med);
    clear jun med
end

%% injection into shWhite
image = {'/Volumes/CORAVOS3/6715shWhite(III)-568Dcad647MBS/Quantification/JSC_shWhite_020916_L33_Sum/sp_data/JSC_shWhite_020916_L33_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shWhite(III)-568Dcad647MBS/Quantification/JSC_shWhite_020916_L29_Sum/sp_data/JSC_shWhite_020916_L29_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shWhite(III)-568Dcad647MBS/Quantification/JSC_shWhite_020916_L26_Sum/sp_data/JSC_shWhite_020916_L26_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shWhite(III)-568Dcad647MBS/Quantification/JSC_shWhite_020916_L24_Sum/sp_data/JSC_shWhite_020916_L24_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shWhite(III)-568Dcad647MBS/Quantification/JSC_shWhite_020916_L23_Sum/sp_data/JSC_shWhite_020916_L23_Sum_z001_c002.tif'};
         

fileName = {'6715shWhite_Dcad_020916_L33',...
            '6715shWhite_Dcad_020916_L29',...
            '6715shWhite_Dcad_020916_L26',...
            '6715shWhite_Dcad_020916_L24',...
            '6715shWhite_Dcad_020916_L23'};

edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion,pixelErosion);
    j.shWhite = cat(2,j.shWhite,jun);
    m.shWhite = cat(2,m.shWhite,med);
    clear jun med
end

%% injection into shDia
image = {'/Volumes/CORAVOS3/6715shDia(HMS)-568Dcad647MBS/Quantification/JSC_shDia_L7_Sum/sp_data/JSC_shDia_L7_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shDia(HMS)-568Dcad647MBS/Quantification/JSC_shDia_L3_Sum/sp_data/JSC_shDia_L3_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shDia(HMS)-568Dcad647MBS/Quantification/JSC_shDia_020916_L14_Sum/sp_data/JSC_shDia_020916_L14_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shDia(HMS)-568Dcad647MBS/Quantification/JSC_shDia_020916_L8_Sum/sp_data/JSC_shDia_020916_L8_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shDia(HMS)-568Dcad647MBS/Quantification/JSC_shDia_020916_L5_Sum/sp_data/JSC_shDia_020916_L5_Sum_z001_c002.tif',...
         '/Volumes/CORAVOS3/6715shDia(HMS)-568Dcad647MBS/Quantification/JSC_shDia_020916_L3_Sum/sp_data/JSC_shDia_020916_L3_Sum_z001_c002.tif'};
         

fileName = {'6715shDia_Dcad_L7',...
            '6715shDia_Dcad_L3',...
            '6715shDia_Dcad_020916_L14',...
            '6715shDia_Dcad_020916_L8',...
            '6715shDia_Dcad_020916_L5',...
            '6715shDia_Dcad_020916_L3'};

edgeDir = '/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/';


for i = 1:length(image)
    [jun,med] = jm_master(double(imread(image{i})),edgeDir,fileName{i},pixelConversion,pixelErosion);
    j.shDia = cat(2,j.shDia,jun);
    m.shDia = cat(2,m.shDia,med);
    clear jun med
end

%% Plotting

noInjMat = cat(1,j.noinj,m.noinj)'
shWhiteMat = cat(1,j.shWhite,m.shWhite)'
shDiaMat = cat(1,j.shDia,m.shDia)'

maxLength = max([length(noInjMat),length(shWhiteMat),length(shDiaMat)])
noInjMat([end:maxLength],:) = NaN
shWhiteMat([end:maxLength],:) = NaN
shDiaMat([end:maxLength],:) = NaN


aggMat = cat(2,noInjMat,shWhiteMat)
aggMat = cat(2,aggMat,shDiaMat)
%%
labels = {'No Injection Junct' ,'No Injection Med','shWhite Junct','shWhite Med','shDia Junct','shDia Med'}
cellAggMat = mat2cell(aggMat,maxLength,[1,1,1,1,1,1])
figure,plotSpread(cellAggMat,0.05,[],labels)
hold on
boxplot(aggMat,labels)

figure,
boxplot(aggMat,labels)

figure
[p,t,stats] = kruskalwallis(aggMat);
c = multcompare(stats)


%% Calculating Claudia's Polarity Metric

noInjDiff   = (m.noinj - j.noinj)'%./(m.noinj + j.noinj))';
shWhiteDiff = (m.shWhite - j.shWhite)'%./(m.shWhite + j.shWhite))';
shDiaDiff   = (m.shDia - j.shDia)'%./(m.shDia + j.shDia))';

maxLength = max([length(noInjDiff),length(shWhiteDiff),length(shDiaDiff)]);
noInjDiff([end:maxLength]) = NaN
shWhiteDiff([end:maxLength],:) = NaN
shDiaDiff([end:maxLength],:) = NaN

agg = [noInjDiff,shWhiteDiff,shDiaDiff]

figure,
labels = {'No Injection','shWhite','shDia'}
plotSpread(agg,0.05,[],labels)
hold on
boxplot(agg,labels)

[p,t,stats] = kruskalwallis(agg);
c = multcompare(stats)



