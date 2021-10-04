function R=rredef(A)
[m,n]=size(A);
% matlab's rref function
r = rref(A);
% row index
row=1;
col=1;
for q = 1:m
% finding the first non-zero column
while (A(row,col)==0) && (any(A(row:m,:),'all')~=0)
    col=col+1;
end
% moving the largest value into the pivot position
    [val, id] = max(abs(A(row:end,col)));
    id = id+row-1;
    val=A(id,col);
    A = ele2(m,id,row)*A;
% making the value of the number in the pivot position 1
    if val~=0
        A = ele3(m,row,1/val)*A;
    end
% checking if the rows under are all zero
    if any(A(row+1:m,col:n),'all')==0
        break
    end
% making all rows in the column below the pivot position 0
    if row<m
        for k=(row+1):m
            A = ele1(m,-A(k,col),row,k)*A;
        end
    end
    A = closetozeroroundoff(A,7);
    row=row+1;
    col=col+1;
end
% backwards phase
% will continue as long as the index is not the first row
while row>1
% row replacement operation for rows above pivot position
    for k=row:-1:2
        A =ele1(m,-A(k-1,col),row,k-1)*A;
    end
    A = closetozeroroundoff(A,7);
% decrementing row index to one above it
    row=row-1;
% finding the pivot position in this row
    col=1;
    while A(row,col)==0
        col=col+1;
    end
end
R=A;
if closetozeroroundoff(R-r,5)==0
    disp('the reduced echelon form of A is')
    R
else
    disp('Something went wrong!')
    R=[]
end




