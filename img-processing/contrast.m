function I = contrast(I, value)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[M,N] = size(I);

for i=1:M
    for j=1:N
        a = I(i,j);
        a = value * a;
        if a > 255
            a = 255;
        end
        I(i,j) = a;
    end
end





