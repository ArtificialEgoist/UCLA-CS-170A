function reshaped = fakePhoto(photoName)

%save photo as m x n RGB image and obtain dimensions
A=imread(photoName);
sizeOfA=size(A);
m=sizeOfA(1);
n=sizeOfA(2);

%reshape the image into (m*n) x 3
R=reshape(A,m*n,3);

%find covariance of R along with its PCs
CovR=cov(double(R));
[U,S,V]=svd(CovR);
PrincipalComponents=U(:,1:3);
SecondPC=PrincipalComponents(:,2);

%project image into its second PC; reshape to m x n
reshaped=double(R)*double(SecondPC);
reshaped=reshape(reshaped,m,n);

%display grayscaled image
imshow(reshaped);