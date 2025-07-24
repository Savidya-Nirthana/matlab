function Data = invertData(Data, class)

%************* Interest class ********************

indices = (Data(:, end) == class);
Data(indices, end) = 1;

%************* Non-interest Class *****************


ind = ~indices;
Data(ind, end) = -1;
