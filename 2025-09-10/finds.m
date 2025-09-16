data = {
    'sunny', 'warm', 'normal', 'strong','warm','same', 'yes';
    'sunny', 'warm', 'high', 'strong','warm','same', 'yes';
    'rainy', 'cold', 'normal', 'strong','warm','change', 'no';
    'sunny', 'warm', 'normal', 'strong','cool','change', 'yes';
};

attributes = size(data, 2) -1;
hypothesis = repmat('0', 1, attributes);

for i=1:size(data, 1)
    if strcmp(data{i,end},'yes')
        if all(hypothesis=='0')
            for j=1:attributes
                hypothesis(j) = data{i, j}(1);
                temp_hypothesis{j} = data{i.j};
            end
        end
    else
        for j=1:attributes
            if ~strcmp(temp_hypothesis{j}, data{i,j})
                temp_hypothesis{j} = '?';
            end
        end
    end
end

disp('Final hypothesis using FIND-S:');
disp(temp_hypotyhesis);