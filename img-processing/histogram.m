function h = histogram(I)

    if length(size(I)) == 3
        I = rgb2gray(I);
    end

    h = zeros(1,256);
    [M,N] = size(I);


    for i=1:M
        for j=1:N
            a = I(i,j);
            h(a+1) = h(a+1) + 1;
        end
    end
