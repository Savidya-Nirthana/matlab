function I = modifiedContrast(I)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    
    [M,N] = size(I);
    k=256;
    
    qlow = 0.005;
    qhigh = 0.005;
    
    h = histogram(I);
    H = cumulativeHist(h);
    
    amin = 0;
    amax = k-1;
    alow = min(find(H>=M*N*qlow));
    ahigh = max(find(H<=M*N*(1-qhigh)));
    
    for i=1: M
        for j = 1:N
            a = I(i,j);
            I(i,j) = amin + (a-alow) * ((amax - amin) / (ahigh - alow));
        end
    end
    
    