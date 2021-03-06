
function [jm_ratio] = jm_master(image,edge_dir)
%% Master Script for Junctional vs Medial measurement
%% User Inputs
% Get these from Junc_Med_CONFIG

%% Loading images

data.mem_im = double(gaussfilt(imread(membrane),0.7));
data.tmod_im = double(gaussfilt(imread(tmod),0.7));
data.mbs_im = double(gaussfilt(imread(mbs),0.7));



%% Importing EDGE data
measdir = strcat('/Users/jcoravos/Documents/MATLAB/EDGE-1.06/DATA_GUI/', filename, '_apical','/Measurements/')

measVerty = 'Membranes--vertices--Vertex-y.mat';
measVertx = 'Membranes--vertices--Vertex-x.mat';
Verty = load(strcat(measdir,measVerty));  
Verty = squeeze(Verty.data(:,1,:));
Vertx = load(strcat(measdir,measVertx));
Vertx = squeeze(Vertx.data(:,1,:));

%{
Verty = Verty(1,:)
Vertx = Vertx(1,:)
%}

%% Calculating junctional and medial intensities
    [junct,medial] = Junct_Medial(Vertx,Verty,pc,data.tmod_im);
    [junct2,medial2] = Junct_Medial(Vertx,Verty,pc,data.mem_im);
    [mbs_junct,mbs_medial] = Junct_Medial(Vertx,Verty,pc, data.mbs_im);
    
%% Calculating Ratios

    tmod_jm = junct./medial;
    mem_jm = junct2./medial2;
    %mbs_jm = mbs_junct./mbs_medial;
    
    
    
    
% %  %% Plotting Intensities
% % %  
% % % figure,
% % %  boxplot([tmod_junct',tmod_medial'],'labels',{'Junctional','Medial'})
% % %  title('tmod')
% % %  
% % %  figure,
% % %  boxplot([mem_junct',mem_medial'],'labels',{'Junctional','Medial'})
% % %  title('mem')
% % %  
% % % figure,
% % % boxplot([mbs_junct',mbs_medial'],'labels',{'Junctional','Medial'})
% % % title('mbs')

%% Plotting Ratios
% % 
figure,
boxplot([tmod_jm'])
title('Junctional:Medial Ratio in Ventral Furrow')
% 
%  
end
% 
