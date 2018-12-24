% LU decomposition of matrix A.

function [L,U] = LUdec(A)

n=size(A,1);
for k=1:n-1
    for i=k+1:n
        if A(i,k)~=0.0
            lambda=A(i,k)/A(k,k);
            A(i,k+1:n)=A(i,k+1:n)-lambda*A(k,k+1:n);
            A(i,k)=lambda;
        end
    end
end

L=zeros(n);
U=L;
for r=1:n
    for c=1:(r-1)
        L(r,c)=A(r,c);
    end
    L(r,r)=1;
    for c=r:n
        U(r,c)=A(r,c);
    end
end

LU=A;