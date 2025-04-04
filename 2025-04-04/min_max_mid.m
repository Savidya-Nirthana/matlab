I = imread('Lenna.png');
if length(size(I)) == 3
    I = rgb2gray(I);
end


IG = imnoise(I, 'salt & pepper');


f = @(x) min(x(:));
Jmin = nlfilter(IG, [3,3], f);

f = @(x) max(x(:));
Jmax = nlfilter(IG, [3,3], f);

f = @(x) median(x(:));
Jmed = nlfilter(IG, [3,3], f);

subplot(2,2,1);imshow(I);hold on;
subplot(2,2,2);imshow(Jmin);hold on;
subplot(2,2,3);imshow(Jmax);hold on;
subplot(2,2,4);imshow(Jmed);hold on;