function I = inverting(I)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    [row, col] = size(I);
    amax = 255;
    
    for x=1:row
        for y=1: col
            a = I(x, y);
            a = amax - a;
            I(x,y) = a;
        end
    end
        