I = imread("./images/circles1.png");


se = strel("disk", 20);
se1 = strel("disk", 30);
K = imopen(I, se);

J = imopen(K, se1);
L = K - J;
subplot(1,4,1);imshow(I);
subplot(1,4,2); imshow(K);
subplot(1,4,3); imshow(J);
subplot(1,4,4); imshow(L);