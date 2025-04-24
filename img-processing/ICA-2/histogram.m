function h = histogram(I)

if length(size(I)) == 3
    I = rgb2gray(I);
end


[M,N] = size(I);
K = 256;
h = zeros(1,K);

for i=1:M
    for j=1:N
        a = I(i,j);
        h(a+1) = h(a+1) + 1;
    end
end