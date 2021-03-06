function v = align(boidNum,velocity,spec,localCheck)
    localBoids = sum(localCheck(:) == 1);
    if  localBoids == 0
        v = [0; 0; 0];
    else
        percVelocity = [0; 0; 0];
        for i = 1 : spec.n
            if i == boidNum
                continue
            elseif localCheck(i) == 0
                continue
            end
            percVelocity = percVelocity + velocity(:,i);
        end

        percVelocity = percVelocity / localBoids;
        v = (percVelocity - velocity(:,boidNum)) / 6;
    end
end