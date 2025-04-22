function I = LinearFilter(I, f)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[x,y] = size(f);
[M,N] = size(I);

X = (x-1)/2;
Y = (y-1)/2;

J = I;
for i=X+1: M-X
    for j=Y+1: N-Y
        S = 0;
        for u=-X:X
            for v=-Y:Y                
                t = J(i+u,j+v)*f(X+u+1, Y+v+1);
                S = S+uint32(t);
            end
        end
        I(i, j) = S/(x*y);
    end
end

