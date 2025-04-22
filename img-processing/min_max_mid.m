I = imread("./images/Lenna.png");

if length(size(I)) == 3
    I = rgb2gray(I);
end


J = imnoise(I, "salt & pepper");

f = @(x) min(x(:));

Jmin = nlfilter(J,[3,3],f);

subplot(2,2,1);imshow(J); hold on;
subplot(2,2,2);imshow(Jmin);

f = @(x) max(x(:));

Jmax = nlfilter(J , [3,3], f);

subplot(2,2,3); imshow(Jmax);

f = @(x) median(x(:));
Jmid = nlfilter(J, [3,3], f);

subplot(2,2,4);imshow(Jmid);