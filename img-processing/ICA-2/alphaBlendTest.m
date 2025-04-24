IBG = imread("./images/IBG.png");
IFG = imread("./images/IFG.png");

I = alphaBlend(IBG, IFG, 0.5);

subplot(2,2,1); imshow(IBG); title("Background images");
subplot(2,2,2); imshow(IFG); title("Foreground images");
subplot(2,2,3); imshow(I); title("Blend images");

