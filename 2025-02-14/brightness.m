function T = brightness(I, c)
    if length(size(I)) == 3
        T = rgb2gray(I);
    end
    
    [row, col] = size(T);
    for x=1:row
        for y=1: col
            a = I(x, y);
            a = a+c;
            if a<0
                a = 0;
            end
            if a>255
                a = 255;
            end
            
            T(x,y) = a
        end
    end
            
                