load fisheriris
X = meas;
y = species;

TreeMdl = fitctree(X,y);
view(TreeMdl, 'Mode',  'graph')

ypred = predict(TreeMdl, X);

RF_Mdl = fitcensemble(X,y,'Method', 'Bag');
ypred_rf = predict(RF_Mdl, X);
