function I = treshholding(I, thresh)
    if length(size(I)) == 3
        I = rgb2gray(I);
    end
    [row, col] = size(I);
    
    for x=1:row
        for y=1: col
            a = I(x, y);
            if(a<=thresh)
                a=0;
            else
                a=255;
            end
            I(x,y) = a;
        end
    end
    