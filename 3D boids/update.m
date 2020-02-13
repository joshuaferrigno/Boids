function [pos,velocity] = update(pos,velocity,spec)
    for i = 1 : spec.n
        localCheck = prox(pos,i,spec);
        
        sepVec = separate(i,pos,spec,localCheck);
        aligVec = align(i,velocity,spec,localCheck);
        cohesVec = cohesion(i,pos,spec,localCheck);
        boundVec = bounding(spec,i,pos);

        velocity(:,i) = velocity(:,i) + sepVec + aligVec + cohesVec + boundVec + spec.noise*rand(3,1)-spec.noise/2;
 
        velocity(:,i) = velocityLimit(velocity(:,i),spec.vLimit);
        pos(:,i) = pos(:,i) + velocity(:,i);
%         pos(:,i) = positionLoop(pos,i,spec);
    end
end