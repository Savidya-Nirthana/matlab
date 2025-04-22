I = imread("./images/Lenna.png");
h = histogram(I);
H = cumulativeHist(h);


J = equalisedImg(I);
h1 = histogram(J);
H1 = cumulativeHist(h1);

subplot(3,2,1); imshow(rgb2gray(I)); hold on;
subplot(3,2,2); imshow(J);

subplot(3,2,3); bar(h);
subplot(3,2,4); bar(h1);

subplot(3,2,5); bar(H);
subplot(3,2,6); bar(H1);
