function B = progressiveBlurredness(A,N)

[R,G,B] = image2rgb(A);
t = linspace(0.0, 1.0, N+1);

S=Blur(max(size(A)));
T=S^8;
A4=rgb2image(T^4*R*T^4,T^4*G*T^4,T^4*B*T^4);
A8=rgb2image(T^8*R*T^8,T^8*G*T^8,T^8*B*T^8);

for i=1:N+1
    u=t(i);
    M(i)=im2frame( (1-u)*A4 + u*A8 );
end

movie(M);