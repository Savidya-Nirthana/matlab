I = imread("./images/Lenna.png");

if length(size(I))== 3
    I =rgb2gray(I);

end

P = edge(I,'prewitt');
S = edge(I, 'sobel');
R = edge(I, 'roberts');


subplot(2,2,1);imshow(I);hold on;
subplot(2,2,2);imshow(P);
subplot(2,2,3);imshow(S);
subplot(2,2,4);imshow(R);