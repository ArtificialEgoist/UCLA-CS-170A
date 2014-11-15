function A = rgb2image(R,G,B)
A(:,:,1) = R;
A(:,:,2) = G;
A(:,:,3) = B;

%A(:,:,1) = uint8(R);
%A(:,:,2) = uint8(G);
%A(:,:,3) = uint8(B);
% equivalent: A = cat(3, uint8(R),uint8(G),uint8(B))