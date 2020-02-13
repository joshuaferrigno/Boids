function velocityOut = velocityLimit(velocity,vLimit)
    if norm(velocity) > vLimit
        velocityOut = (velocity / norm(velocity)) * vLimit;
    else 
        velocityOut = velocity;
    end
end