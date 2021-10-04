% Exercise 1:
type ele1, type ele2, type ele3
format
A = [0 2 -5 1; 4 3 -2 5; 2 1 1 3]
ele2(3,1,3)
A1 = ele2(3,1,3)*A
A2 = ele1(3,-2,1,2)*A1
A3 = ele1(3,-2,2,3)*A2
A4 = ele1(3,-1,2,1)*A3
A5 = ele3(3,3,(1/3))*A4
A6 = ele1(3,4,3,2)*A5
A7 = ele1(3,-5,3,1)*A6
A8 = ele3(3,1,1/2)*A7
if rref(A) == A8
    disp('Matrix A8 is the reduced echelon form of A')
end

% Exercise 2:
type rredef
type closetozeroroundoff
% (a)
A=[2 1 1; 1 2 3; 1 1 1]
R=rredef(A);
% (b)
A=[zeros(3,2),randi(10,3,3)]
R=rredef(A);
% (c)
A = magic(4)
R=rredef(A);
% (d)
A = magic(5)
R=rredef(A);
% (e)
A=ones(3)
R=rredef(A);
% (f)
A=rand(3,4)
R=rredef(A);
% (g)
A=randi(10,5,3);A=[A,A(:,3)]
R=rredef(A);
% (h)
A=[magic(4),hilb(4)]
R=rredef(A);