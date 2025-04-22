function I = thresholdk(I, t)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[M,N] = size(I);
for i=1:M
    for j=1:N
        a = I(i,j);
        if a<t
            a = 0;
        else 
            a = 255;
        end
        I(i,j) = a;
    end
end
