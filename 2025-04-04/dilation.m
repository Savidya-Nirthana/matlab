BW1 = zeros(9,10);
BW1(4:6, 4:7) = 1;

SE = strel('square', 3);
BW2 = imdilate(BW1, SE);

SE2 = strel('disk', 3);
BW3 = imdilate(BW1, SE2);

subplot(2,2,1);imshow(BW1);hold on;
subplot(2,2,2);imshow(BW2);
subplot(2,2,3);imshow(BW3);
subplot(2,2,2);imshow(BW2);
