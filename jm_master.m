
function [juncMean,medMean] = jm_master(image,edgeDir,fileName,pixelConversion,pixelErosion)
%% Master Script for Junctional vs Medial measurement


%% Importing EDGE data
measdir = strcat(edgeDir, fileName, '/Measurements/');

measVerty = 'Membranes--vertices--Vertex-y.mat';
measVertx = 'Membranes--vertices--Vertex-x.mat';
Verty = load(strcat(measdir,measVerty));  
Verty = squeeze(Verty.data(:,1,:));
Vertx = load(strcat(measdir,measVertx));
Vertx = squeeze(Vertx.data(:,1,:));


%% Calculating junctional and medial intensities
    [juncMean,medMean] = Junct_Medial(Vertx,Verty,pixelConversion,image,pixelErosion);
    
end
% 
