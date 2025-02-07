function h = histogram(I)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end