I=imread('dog.jfif');
h1 = histogram(I);
J = modifiedContrast(I);
K = autoContrast(I);



subplot(3,2,1);imshow(rgb2gray(I));hold on;
subplot(3,2,2);bar(h1);
subplot(3,2,3);imshow(J);
subplot(3,2,4);bar(histogram(J));
subplot(3,2,5);imshow(K);
subplot(3,2,6);bar(histogram(K));
