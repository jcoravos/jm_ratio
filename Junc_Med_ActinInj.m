%% Junc_Med Config File
% Each of these files is a configuration file for running the
% Junc_Med_MASTER analysis
clear all
%% Image1_122015
filename = 'Image41_051315'
dir1 = '/Volumes/CORAVOS 2/Live Actin Injection/Quantification/Image41_051315_Summed/'
actin = strcat(dir1, filename, '_z002_c000.tif');
membrane = strcat(dir1,filename,'_z002_c001.tif');
%Rho = strcat(dir1, filename,'_z001_c002.tif');
pc = 0.087; % pc is pixel conversion, microns per pixel 

Junc_Med_MASTER
DATA = [tmod_jm;mem_jm]'
clear data dir1 filename mbs mbs_jm mbs_junct mbs_medial measdir measVertx measVerty mem_jm mem_junct
clear mem_medial membrane pc tmod tmod_jm tmod_junct tmod_medial Vertx Verty

%% Image5_122015

filename = 'Image41_031515'
dir1 = '/Volumes/CORAVOS 2/Live Actin Injection/Quantification/Image41_031515_Summed/'
actin = strcat(dir1, filename, '_z001_c000.tif');
membrane = strcat(dir1,filename,'_z001_c001.tif');
%Rho = strcat(dir1, filename,'_z001_c002.tif');
pc = 0.0987; % pc is pixel conversion, microns per pixel 

Junc_Med_MASTER
DATA_ActinInj = cat(1,DATA,[tmod_jm;mem_jm]')
clear data dir1 filename mbs mbs_jm mbs_junct mbs_medial measdir measVertx measVerty mem_jm mem_junct
clear mem_medial membrane pc tmod tmod_jm tmod_junct tmod_medial Vertx Verty

