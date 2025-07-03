function accuracy = OVASVMs(data, N)


[trainData, teData] = splitData(data);
%[trData, teData] = scaleData(trainData, teData);
[trData, valData]= splitData(data);

A=1:N;

c = [2^-10 2^-9 2^-8 2^-7 2^-6 2^-5 2^-4 2^-3 2^-2 2^-1 2^0 2^1 2^2 2^3 2^4 2^5 2^6 2^7 2^8 2^9 2^10];
% c = 2^-10: : 2^10);


