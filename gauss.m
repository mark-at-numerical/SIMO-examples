% Gaussian elimination for solving Ax = b.

function x=gauss(A,b)


if size(b,2)>1;
    b=transpose(b); % convert to column vector
end

n=length(b);
% k is column
% i is row
for k=1:n-1
    for i=k+1:n
        if A(i,k)~=0
            lambda=A(i,k)/A(k,k);
            A(i,k+1:n)=A(i,k+1:n)-lambda*A(k,k+1:n);
            b(i)=b(i)-lambda*b(k);
        end
    end
end

b(n)=b(n)/A(n,n);
for k=n-1:-1:1
    b(k)=(b(k)-A(k,k+1:n)*b((k+1:n)'))/A(k,k);
end

x=b;
