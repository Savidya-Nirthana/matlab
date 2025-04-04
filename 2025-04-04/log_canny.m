I = imread('baboon.png');
if length(size(I)) == 3
    I = rgb2gray(I);
end

LOG = edge(I, 'log');
Canny = edge(I, 'canny');
Canny_t = edge(I, 'canny', 0.2);
Canny_t2 = edge(I, 'canny', 0.6);

subplot(2,3,1);imshow(I);hold on;
subplot(2,3,2);imshow(LOG);hold on;
subplot(2,3,3);imshow(Canny);
subplot(2,3,4);imshow(Canny_t);
subplot(2,3,5);imshow(Canny_t2);