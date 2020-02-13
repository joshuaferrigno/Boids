function v = bounding(boundLim,boundGain,boidNum,pos)
    v = [0; 0];
    if pos(1,boidNum) < -(boundLim - .1 * boundLim)
        v(1)  = boundGain;
    elseif pos(1,boidNum) > (boundLim - .1 * boundLim)
        v(1) = -boundGain;
    end
    if pos(2,boidNum) < -(boundLim - .1 * boundLim)
        v(2)  = boundGain;
    elseif pos(2,boidNum) > (boundLim - .1 * boundLim)
        v(2) = -boundGain;
    end
end