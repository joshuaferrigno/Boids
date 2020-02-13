function [pos,velocity] = update(n,pos,velocity,boundLim,boundGain,sepDist,vLimit,local,noise)
    for i = 1 : n
        localCheck = prox(n,pos,i,local);
        
        sepVec = separate(i,n,pos,sepDist,localCheck);
        aligVec = align(i,n,velocity,localCheck);
        cohesVec = cohesion(i,n,pos,localCheck);
        
%         boundVec = bounding(boundLim,boundGain,i,pos);

        velocity(:,i) = velocity(:,i) + sepVec + aligVec + cohesVec + noise*rand(2,1)-noise/2;
%         + boundVec;
 
        velocity(:,i) = velocityLimit(velocity(:,i),vLimit);
        pos(:,i) = pos(:,i) + velocity(:,i);
        pos(:,i) = positionLoop(pos,i,boundLim);
    end
end