I = imread("images/Lenna.png");

J = thresholdk(I, 128);

h1 = histogram(I);
h2 = histogram(J);

subplot(2,2,1); imshow(rgb2gray(I));hold on;
subplot(2,2,2); bar(h1);
subplot(2,2,3); imshow(J);
subplot(2,2,4); bar(h2);