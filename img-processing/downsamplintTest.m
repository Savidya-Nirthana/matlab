I = imread("./images/Lenna.png");


J = downsampling(I);


subplot(1,3,1);imshow(rgb2gray(I));hold on;
subplot(1,3,2);imshow(J);
subplot(1,3,3);imshow(downsampling(J));