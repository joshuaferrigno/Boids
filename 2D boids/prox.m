function localCheck = prox(n,pos,boidNum,localDist)
    localCheck = zeros(1,n);
    for i = 1 : n
        if i == boidNum
            continue
        end
        dist = norm(pos(:,boidNum) - pos(:,i));
        if dist < localDist
            localCheck(i) = 1;
        end
    end
end