load carbig

tbl = table(Horsepower, Weight, Acceleration, Cylinders, MPG);
disp('First 5 rows of dataset:')
head(tbl, 5)
disp('Summary Statistics:')

tbl_clean = rmmissing(tbl);
fprintf('after removing missing values: %d rows remain\n', height(tbl_clean));

tbl_fill = fillmissing(tbl, 'linear');

X = tbl_clean{:,{'Horsepower', 'Weight', 'Acceleration'}};

%X_norm = normalize(X, 'range');
X_std = zscore(X);


subplot(1,2,1);histogram(X(:,1)); title('Original Horsepower');
subplot(1,2,2);histogram(X_std(:,1));title('Standardised Horsepower');

tbl_clean.Cylinders = categorical(tbl_clean.Cylinders);
cyl_encoded = dummyvar(tbl_clean.Cylinders);

disp(cyl_encoded(1:5,:))

T = tbl_clean{1:5,{'Cylinders'}};
disp(T);

X_final = [X_std cyl_encoded];

corrVar = corr(tbl_clean{:,{'Horsepower', 'Weight', 'Acceleration'}},tbl_clean.MPG,'Rows','complete');

disp('Correlation of features with MPG:');
disp(array2table(corrVar, 'VariableNames', {'Correlation'},'RowNames', {'Horsepower', 'Weight','Acceleration'}));


