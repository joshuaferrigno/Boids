function swarmVec = swarm(pos,velocity,boundLim)
    swarmVec(1:2) = mean(pos');
    v1 = mean(velocity');
    swarmVec(3:4) = (v1/norm(v1))*(boundLim/4);
end