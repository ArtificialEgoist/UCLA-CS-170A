function linearExtrapolation(A,Z,T,N)
    
t = linspace(1.0, T, N+1);
for i=1:N+1
    u=t(i);
    X=(1-u)*A + u*Z;
    newX = (X-min(X(:)))./(max(X(:)-min(X(:)))); %scales X to [0,1]
    M(i)=im2frame( newX );
end

movie(M);