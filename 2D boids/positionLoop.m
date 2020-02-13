function v = positionLoop(pos,boidNum,boundLim)
    v = [pos(1,boidNum); pos(2,boidNum)];
    if pos(1,boidNum) > boundLim
        v(1)  = (pos(1,boidNum) - boundLim) - boundLim;
    elseif pos(1,boidNum) < -boundLim
        v(1) = (pos(1,boidNum) + boundLim) + boundLim;
    end
    if pos(2,boidNum) > boundLim
        v(2)  = (pos(2,boidNum) - boundLim) - boundLim;
    elseif pos(2,boidNum) < -boundLim
        v(2) = (pos(2,boidNum) + boundLim) + boundLim;
    end
end