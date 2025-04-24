function I = invert(I)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[M, N] = size(I);
amax = 255;
for i=1:M
    for j = 1:N
        a = I(i,j);
        I(i,j) = amax- a;
    end
end