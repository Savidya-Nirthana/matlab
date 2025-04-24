function I = autoContrast(I)

if length(size(I)) == 3
    I = rgb2gray(I);
end

[M,N] = size(I);
amax = 255;
amin = 0;

alow = min(min(I));
ahigh = max(max(I));

for i=1:M
    for j=1:N
        a = I(i,j);
        I(i,j) = amin + (a-alow) *((amax-amin)/(ahigh-alow));
    end
end