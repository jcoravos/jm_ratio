%% Junc_Med Config File
% Each of these files is a configuration file for running the
% Junc_Med_MASTER analysis
clear all
%% Image1_111013
filename = 'Image1_111013'
dir1 = '/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image1_111013/'
membrane = strcat(dir1, filename, '_c003.tif');
tmod = strcat(dir1,filename,'_c001.tif'); %myo
mbs = strcat(dir1, filename,'_c002.tif'); %ecad
pc = 0.099; % pc is pixel conversion, microns per pixel 

Junc_Med_MASTER
DATA = [tmod_jm;mbs_jm;mem_jm]'
clear data dir1 filename mbs mbs_jm mbs_junct mbs_medial measdir measVertx measVerty mem_jm mem_junct
clear mem_medial membrane pc tmod tmod_jm tmod_junct tmod_medial Vertx Verty


%% Image13_111013
filename = 'Image13_111013'
dir1 = '/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/Fixed/SqhGFP,Phall568,Ecad647/Image13_111013/'
membrane = strcat(dir1, filename, '_c003.tif');
tmod = strcat(dir1,filename,'_c001.tif'); %myo
mbs = strcat(dir1, filename,'_c002.tif'); %ecad
pc = 0.095; % pc is pixel conversion, microns per pixel 

Junc_Med_MASTER
DATA = cat(1,DATA,[tmod_jm;mbs_jm;mem_jm]')
clear data dir1 filename mbs mbs_jm mbs_junct mbs_medial measdir measVertx measVerty mem_jm mem_junct
clear mem_medial membrane pc tmod tmod_jm tmod_junct tmod_medial Vertx Verty

