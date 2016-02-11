%% Junc_Med Config File
% Each of these files is a configuration file for running the
% Junc_Med_MASTER analysis
clear all
%% Image1_122015
filename = 'Image1_122015_lateral'
dir1 = '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image1_122015_lateral/'
membrane = strcat(dir1, filename, '_c001.tif');
tmod = strcat(dir1,filename,'_c002.tif');
mbs = strcat(dir1, filename,'_c003.tif');
pc = 0.095; % pc is pixel conversion, microns per pixel 

Junc_Med_MASTER
DATA = [tmod_jm;mbs_jm;mem_jm]'
clear data dir1 filename mbs mbs_jm mbs_junct mbs_medial measdir measVertx measVerty mem_jm mem_junct
clear mem_medial membrane pc tmod tmod_jm tmod_junct tmod_medial Vertx Verty

%% Image5_122015

filename = 'Image5_122015_lateral'
dir1 = '/Volumes/CORAVOS 2/TmodGFP;Adducin568;MBS647/Image5_122015_lateral/'
membrane = strcat(dir1, filename, '_c001.tif');
tmod = strcat(dir1,filename,'_c002.tif');
mbs = strcat(dir1, filename,'_c003.tif');
pc = 0.093; % pc is pixel conversion, microns per pixel 

Junc_Med_MASTER
DATA = cat(1,DATA,[tmod_jm;mbs_jm;mem_jm]')
clear data dir1 filename mbs mbs_jm mbs_junct mbs_medial measdir measVertx measVerty mem_jm mem_junct
clear mem_medial membrane pc tmod tmod_jm tmod_junct tmod_medial Vertx Verty
