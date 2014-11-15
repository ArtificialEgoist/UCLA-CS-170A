function GrayA = color2grayscale(A)
    [R,G,B] = image2rgb(A);
    GrayA = rgb2image((R+G+B)/3,(R+G+B)/3,(R+G+B)/3);