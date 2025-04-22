function I = autoContrast(I)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    
    k = 256;

    amin = 0;
    amax = k-1;

    alow = min(min(I));
    ahigh = max(max(I));

    [n,m] = size(I);

    for i=1:n
        for j=1:m
            a = I(i,j);
            I(i,j) = amin + (a-alow)*((amax - amin)/(ahigh-alow));
        end
    end
