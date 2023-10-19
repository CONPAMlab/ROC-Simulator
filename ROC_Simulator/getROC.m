%% Get hit rates & false-alarm rates for ROC

function [HR, FAR, zHR, zFAR]=getROC(Model, param)
% model: 2HT, EVSD, UVSD, DPSD, Slots

Nsample=100;
c=linspace(-3,3,Nsample+1);
% if strcmp(Model,'2HT')
%     c=linspace(0,1,Nsample+1);
% end
[HR, zHR]=c2HR(Model, c, param);
[FAR, zFAR]=c2FAR(Model, c, param);

end
