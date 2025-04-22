I = imread('./images/lowContrast2.jpg');


if length(size(I)) == 3
    I = rgb2gray(I);

end

h = histogram(I);

J = modifiedContrast(I);
h2 = histogram(J);
 

subplot(2,2,1); imshow(I); hold on;
subplot(2,2,2); plot(h);
subplot(2,2,3); imshow(J);
subplot(2,2,4); plot(h2);
