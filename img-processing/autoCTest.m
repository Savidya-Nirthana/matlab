I = imread('./images/lowContrast2.jpg');
if length(size(I)) == 3
    I = rgb2gray(I);
end

h1 = histogram(I);
Iac = autoContrast(I);
h2 = histogram(Iac);

subplot(2,2,1);imshow(I);hold on;
subplot(2,2,2);plot(h1);
subplot(2,2,3);imshow(Iac);
subplot(2,2,4);plot(h2);

