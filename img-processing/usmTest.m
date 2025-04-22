I = imread("./images/Lenna.png");

J = unsharpMasking(I, 0.5);

subplot(2,2,1);imshow(rgb2gray(I));hold on;
subplot(2,2,2); imshow(unsharpMasking(I,0.5));
subplot(2,2,3); imshow(unsharpMasking(I,1.5));
subplot(2,2,4); imshow(unsharpMasking(I,5));