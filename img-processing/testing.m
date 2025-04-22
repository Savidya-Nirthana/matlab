I = imread("./images/Lenna.png");

if length(size(I)) == 3
    I = rgb2gray(I);

end

f1 = fspecial('average', [10,10]);
f2 = fspecial('average', [3,3]);
s1 = imfilter(I, f1);
s2= imfilter(I,f2);

subplot(1,3,1);imshow(I);hold on;
subplot(1,3,2); imshow(s1);
subplot(1,3,3); imshow(s2);





