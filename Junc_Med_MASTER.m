

%% Master Script for Junctional vs Medial measurement
%% User Inputs
% Get these from Junc_Med_CONFIG

%% Loading images

data.mem_im = gaussfilt(imread(membrane),0.7);
data.tmod_im = gaussfilt(imread(tmod),0.7);
data.mbs_im = gaussfilt(imread(mbs),0.7);


%% Importing EDGE data
measdir = strcat('/Users/Jonathan/Documents/MATLAB/EDGE-1/DATA_GUI/', filename, '/Measurements/')

measVerty = 'Membranes--vertices--Vertex-y.mat';
measVertx = 'Membranes--vertices--Vertex-x.mat';
Verty = load(strcat(measdir,measVerty));  
Verty = squeeze(Verty.data(:,1,:));
Vertx = load(strcat(measdir,measVertx));
Vertx = squeeze(Vertx.data(:,1,:));


%% Calculating junctional and medial intensities
    [tmod_junct,tmod_medial] = Junct_Medial(Vertx,Verty,pc,data.tmod_im);
    [mem_junct,mem_medial] = Junct_Medial(Vertx,Verty,pc,data.mem_im);
    [mbs_junct,mbs_medial] = Junct_Medial(Vertx,Verty,pc, data.mbs_im);
    
%% Calculating Ratios

    tmod_jm = tmod_junct./tmod_medial;
    mem_jm = mem_junct./mem_medial;
    mbs_jm = mbs_junct./mbs_medial;
    
    
    
    
 %% Plotting Intensities
 %{
figure,
 boxplot([tmod_junct',tmod_medial'],'labels',{'Junctional','Medial'})
 title('tmod')
 
 figure,
 boxplot([mem_junct',mem_medial'],'labels',{'Junctional','Medial'})
 title('mem')
 
 figure,
 boxplot([mbs_junct',mbs_medial'],'labels',{'Junctional','Medial'})
 title('mbs')

%% Plotting Ratios

figure,
boxplot([tmod_jm',mem_jm',mbs_jm'],'labels',{'Tmod','Subapical Membrane','MBS'})
title('Junctional:Medial Ratio in Ventral Furrow')

 %}
        

