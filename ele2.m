function E2=ele2(n,i,j)
E2 = eye(n);
E2temp = E2(j,:);
E2(j,:) = E2(i,:);
E2(i,:) = E2temp;
end

