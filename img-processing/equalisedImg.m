function I = equalisedImg(I)

if length(size(I)) == 3
    I = rgb2gray(I);
end

h = histogram(I);
H = cumulativeHist(h);

K = 256;
[M,N] = size(I);

for i = 1 : M
    for j = 1:N
        a = I(i,j);
        I(i,j) = floor((H(a)*(K-1))/(M*N));
    end
end