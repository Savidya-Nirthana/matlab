I = imread("images/Lenna.png");
h1 = histogram(I);

F = [0,0,0,0,0;
    0,1,1,1,0;
    0,1,1,1,0;
    0,1,1,1,0;
    0,0,0,0,0];

J = LinearFilter(I,F);
h2 = histogram(J);

subplot(2,2,1);imshow(rgb2gray(I));hold on;
subplot(2,2,2);plot(h1);
subplot(2,2,3);imshow(J);
subplot(2,2,4);plot(h2);

