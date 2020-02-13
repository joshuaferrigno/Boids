function v = separate(boidNum,n,pos,sepDist,localCheck)
    localBoids = sum(localCheck(:) == 1);
    if  localBoids == 0
        v = [0; 0];
    else
        v = [0; 0];
        for i = 1 : n
            if i == boidNum
                continue
            elseif localCheck(i) == 0
                continue
            end
            if norm(pos(:,boidNum) - pos(:,i)) < sepDist
                v = v - (pos(:,boidNum) - pos(:,i));
            end
        end
end