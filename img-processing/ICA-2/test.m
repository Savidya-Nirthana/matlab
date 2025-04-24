I = imread("./images/ex1.png");

J = brightness(I, 20);

H = autoContrast(I);

K = invert(I);

M = thresholding(I, 128);

h = histogram(I);
h1 = histogram(J);
h3 = histogram(H);

subplot(3,2,1);imshow(rgb2gray(I));title("Original Image");
subplot(3,2,2);imshow(J);title("Brightness increase by 20");
subplot(3,2,3); imshow(H);title("Auto contrast");
subplot(3,2,4); imshow(K);title("Inversion");
subplot(3,2,5); imshow(M); title("Binarais");