function I = linearFilter(I, F)

if length(size(I)) == 3
    I = rgb2gray(I);
end


[M, N] = size(I);
[k, l] = size(F);

K = (k-1)/2;
L = (l-1)/2;

J = I;
for x=(K+1):(M-K)
    for y=(L+1):(N-L)
        S=0;
        for i=-K:K
            for j=-L:L
                t=J(x+i, y+j) * F(K+i+1, L+i+1);
                S=S+uint32(t);
            end
        end
        I(x,y) = S/(k*l);
    end
    
end