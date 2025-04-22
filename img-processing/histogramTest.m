I = imread("images/Lenna.png");
J = brightness(I, -30);
hi = histogram(I);
hj = histogram(J);


subplot(2,2,1);imshow(rgb2gray(I));hold on;
subplot(2,2,2);bar(hi);
subplot(2,2,3);imshow(J);
subplot(2,2,4);bar(hj);

