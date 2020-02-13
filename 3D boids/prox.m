function localCheck = prox(pos,boidNum,spec)
    localCheck = zeros(1,spec.n);
    for i = 1 : spec.n
        if i == boidNum
            continue
        end
        dist = norm(pos(:,boidNum) - pos(:,i));
        if dist < spec.local
            localCheck(i) = 1;
        end
    end
end