I = imread('images.jfif');
J = imread('images (1).jfif');

K = alphaBlending(I, J, 0.6);

subplot(1,3,1);imshow(rgb2gray(I));hold on;
subplot(1,3,2);imshow(rgb2gray(J));
subplot(1,3,3);imshow(K);
