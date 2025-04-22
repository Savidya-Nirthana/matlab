I = imread("./images/A3.jpg");
J = imread("./images/A4.jpg");

K  = alphablend(I,J,0.5);

imshow(K);