function J =  unsharpMasking(I, a)

if length(size(I)) == 3
    I = rgb2gray(I);

end


H = fspecial('gaussian', [5,5], 1.5);
I_b = imfilter(I, H);


M = I - I_b;

J = I + a*M;


