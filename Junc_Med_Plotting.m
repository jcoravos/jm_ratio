%% Plotting Pooled Junc_Med Data
DATA(find(DATA == 0)) = NaN
Columns = {'Ecad Ventral','Ecad Lateral','Myosin Ventral','Myosin Lateral','MBS Ventral','MBS Lateral','Tmod Ventral','Tmod Lateral','Adducin Ventral','Adducin Lateral'}

ColMeans = nanmean(DATA,1)
ColStd = nanstd(DATA,1)

bar(ColMeans)
hold on
errorbar(ColMeans,ColStd,'rx')

%% Statistics
[p,t,stats] = anova1(DATA);
c = multcompare(stats)
