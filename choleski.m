% Choleski decomposition of matrix A.

function L=choleski(A)

n=size(A,1);
for j=1:n
    temp=A(j,j)-dot(A(j,1:j-1), A(j,1:j-1));
    if temp<0.0
        error(1);
    end
    A(j,j)=sqrt(temp);
    for i=j+1:n
        A(i,j)=(A(i,j)-dot(A(i,1:j-1),A(j,1:j-1)))/A(j,j);
    end
end

% Getting the lower triangular part of A
L=zeros(size(A));
for r=1:size(L,1)
    for c=1:r
        L(r,c)=A(r,c);
    end
end