%% Junc_Med Config File
% Each of these files is a configuration file for running the
% Junc_Med_MASTER analysis
%clear all
%% Image1_122015
filename = 'Image6_073014'
dir1 = '/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/UtrGFP_GapCh (II)/Image6_073014/MaxImageSequence/MAX_'
actin = strcat(dir1, filename, '_t001_c001.tif');
membrane = strcat(dir1,filename,'_t001_c002.tif');
pc = 0.147; % pc is pixel conversion, microns per pixel 

Junc_Med_MASTER
DATA = [tmod_jm;mem_jm]'
clear data dir1 filename mbs mbs_jm mbs_junct mbs_medial measdir measVertx measVerty mem_jm mem_junct
clear mem_medial membrane pc tmod tmod_jm tmod_junct tmod_medial Vertx Verty

%% Image1_122015
filename = 'Image11_073014'
dir1 = '/Volumes/CORAVOS 1/LSM Microscopy/H2O Injections/UtrGFP_GapCh (II)/Image11_073014/MaxImageSequence/MAX_'
actin = strcat(dir1, filename, '_t001_c001.tif');
membrane = strcat(dir1,filename,'_t001_c002.tif');
pc = 0.138; % pc is pixel conversion, microns per pixel 

Junc_Med_MASTER
DATA_Utr = cat(1,DATA,[tmod_jm;mem_jm]')
clear data dir1 filename mbs mbs_jm mbs_junct mbs_medial measdir measVertx measVerty mem_jm mem_junct
clear mem_medial membrane pc tmod tmod_jm tmod_junct tmod_medial Vertx Verty

