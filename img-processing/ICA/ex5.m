I1 = zeros(20,20);
I2 = zeros(20,20);

I1(1:4,1:6) = 1;
I2(8:12,7:13) = 1;

F = fft2(I1);
F2 = fftshift(F);

F1 = fft2(I2);
F3 = fftshift(F1);

subplot(2,2,1);imshow(I1);title("Left-top white box original images");hold on;
subplot(2,2,2); imshow(log(1+ abs(F2))); title("Shifted fft version of left-top white box image");
subplot(2,2,3); imshow(I2);title("center white box original image");
subplot(2,2,4); imshow(log(1 + abs(F3))); title("shifted fft version of center white box image")


