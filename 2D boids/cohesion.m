function v = cohesion(boidNum,n,pos,localCheck)
    localBoids = sum(localCheck(:) == 1);
    if  localBoids == 0
        v = [0; 0];
    else
        percCenter = [0; 0];
        for i = 1 : n
            if i == boidNum
                continue
            elseif localCheck(i) == 0
                continue
            end
            percCenter = percCenter + pos(:,i);
        end

        percCenter = percCenter / localBoids;

        v = (percCenter - pos(:,boidNum)) / 100;
    end
end

% find the percieved center of all the birds except for the particular boid in
% question (boidNum)
% then create vector towards percieved center (v)