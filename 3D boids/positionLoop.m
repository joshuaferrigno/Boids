function v = positionLoop(pos,boidNum,spec)
    v = [pos(1,boidNum); pos(2,boidNum); pos(3,boidNum)];
    if pos(1,boidNum) > spec.boundLim
        v(1)  = (pos(1,boidNum) - spec.boundLim) - spec.boundLim;
    elseif pos(1,boidNum) < -spec.boundLim
        v(1) = (pos(1,boidNum) + spec.boundLim) + spec.boundLim;
    end
    if pos(2,boidNum) > spec.boundLim
        v(2)  = (pos(2,boidNum) - spec.boundLim) - spec.boundLim;
    elseif pos(2,boidNum) < -spec.boundLim
        v(2) = (pos(2,boidNum) + spec.boundLim) + spec.boundLim;
    end
    if pos(3,boidNum) > spec.boundLim
        v(3)  = (pos(3,boidNum) - spec.boundLim) - spec.boundLim;
    elseif pos(3,boidNum) < -spec.boundLim
        v(3) = (pos(3,boidNum) + spec.boundLim) + spec.boundLim;
    end
end