I = imread("./images/Lenna.png");

if length(size(I)) == 3
    I = rgb2gray(I);
end


Log = edge(I, "log");

canny = edge(I, "canny");
c1 = edge(I, "canny", 0.2);
c2 = edge(I, "canny", 0.5);

subplot(2,2,1);imshow(Log);hold on;
subplot(2,2,2);imshow(canny);
subplot(2,2,3);imshow(c1);
subplot(2,2,4);imshow(c2);
