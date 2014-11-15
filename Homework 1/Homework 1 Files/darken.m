function B = darken(A,T)
    [R,G,B] = image2rgb(A);
    [H,S,V] = rgb2hsv(R,G,B);
    [R,G,B] = hsv2rgb(H,S,T*V);
    B = rgb2image(R,G,B);
    imshow(B);