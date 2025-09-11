load fisheriris
X = meas;
y = species;

cv = cvpartition(y, 'HoldOut', 0.3);
Xtrain = X(training(cv),:);
ytrain = y(training(cv),:);
Xtest = X(test(cv),:);
ytest = y(test(cv),:);

Mdl = fitcknn(Xtrain, ytrain, 'NumNeighbors', 3);

ypred = predict(Mdl, Xtest);

acc = sum(strcmp(ypred, ytest)) / numel(ytest);
fprintf('Accuracy:%.2f%%\n', acc*100);