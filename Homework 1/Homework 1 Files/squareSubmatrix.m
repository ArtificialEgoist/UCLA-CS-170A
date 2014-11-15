function B = squareSubmatrix(A)
    [p,q]=size(A);
    n=min(p,q);
    centerp=p/2;
    centerq=q/2;
    
    B=A(centerp-n/2+1:centerp+n/2, centerq-n/2+1:centerq+n/2);
    
    %B=A(1:n, 1:n); would provide the corner nxn matrix