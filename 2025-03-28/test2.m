I = imread('img.png');
h1 = fspecial('unsharp');
h2 = fspecial('average');
h3 = fspecial('gauss');
h4 = fspecial('laplacian');

usm = imfilter(I, h1);
box = imfilter(I, h2);
gauss = imfilter(I, h3);
maxHat = imfilter(I, h4);

subplot(2,3,1);imshow(I);hold on;

subplot(2,3,2);imshow(usm);
subplot(2,3,3);imshow(box);
subplot(2,3,4);imshow(gauss);
subplot(2,3,5);imshow(maxHat);