function accuracy = OVASVMs(data, N)


[trainData, teData] = splitData(data);
%[trData, teData] = scaleData(trainData, teData);  scaling not necessary
[trData, valData]= splitData(data);   % training data more devided to training and validation

A=1:N;

C = [2^-10 2^-9 2^-8 2^-7 2^-6 2^-5 2^-4 2^-3 2^-2 2^-1 2^0 2^1 2^2 2^3 2^4 2^5 2^6 2^7 2^8 2^9 2^10];
% c = 2^-10: : 2^10);


accuracy = [];  % accuracy = #correctly classified data / #total test data

for i = 1:length(C)
    options = svmlopt('C', C(i), 'Verbosity', 0);  % verbose off  %linear
    predict=[];

    
    for ckass=1:N
        Model=['Model', int2str(A(class)), 'VsAll'];  % label (model name Model${className}VsAll)  ex: Model1VsAll
        x = invertData(trData, A(class));   
        y = x(:, end); % target vector
        x(:,end) = [];  %only data metrics without targets
        svmlwrite('SVMLTrain', x,y); %tokenize
        svm_learn(options, 'SVMLTrain', Model); 
        
        
        xval = invertData(valData, A(class));
        yval = xval(:, end);
        xval(:, end) = [];
        svmwrite('SVMLVal', xval, yval);
        ModelOutput = ['ModelOutput', int2str(A(class)), 'VsAll'];  %output name like previous
        svm_classify(options, 'SVMLVal', Model, ModelOutput); % options -> kernal, parameter values, under ModelOutPut name model save
        svmpredict = svmread(ModelOutput);
        predict = [predict, svmpredict];
    end %end for classs
    
    accuracy(i) = WinnerTakesAll(valData, predict, A);
end % end for i
        
        
