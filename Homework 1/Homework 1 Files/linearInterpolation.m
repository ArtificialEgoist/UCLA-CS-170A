function linearInterpolation(A,Z,N)
    
t = linspace(0.0, 1.0, N+1);
for i=1:N+1
    u=t(i);
    M(i)=im2frame( (1-u)*A + u*Z );
end

movie(M);