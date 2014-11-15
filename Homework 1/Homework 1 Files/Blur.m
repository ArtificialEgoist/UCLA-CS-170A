function A = Blur(n)
    c=2*ones(n,1);
    d=ones(n-1,1);
    
    A=diag(c)+diag(d,-1)+diag(d,1);
    
    A(1,1)=3;
    A(n,n)=3;
    A=0.25*A;