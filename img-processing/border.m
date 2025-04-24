I = imread("./images/panda.png");
I = im2bw(I);


se = strel('square', 3);

J = imerode(I, se);
K = I&~J;

subplot(1,3,1);imshow(I);
subplot(1,3,2);imshow(J);
subplot(1,3,3); imshow(K);