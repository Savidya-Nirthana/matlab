

I = imread("./images/Lenna.png");

if length(size(I)) == 3
    I = rgb2gray(I);
end

I = imnoise(I, "salt & pepper");

f = @(x) median(x(:));

M = nlfilter(I, [3,3], f);

subplot(1,2,1); imshow(I); title("Original image");
subplot(1,2,2); imshow(M); title("Median filter");