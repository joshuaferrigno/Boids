function v = bounding(spec,boidNum,pos)
    v = [0; 0; 0];
    if pos(1,boidNum) < -(spec.boundLim - .1 * spec.boundLim)
        v(1)  = spec.boundGain;
    elseif pos(1,boidNum) > (spec.boundLim - .1 * spec.boundLim)
        v(1) = -spec.boundGain;
    end
    if pos(2,boidNum) < -(spec.boundLim - .1 * spec.boundLim)
        v(2)  = spec.boundGain;
    elseif pos(2,boidNum) > (spec.boundLim - .1 * spec.boundLim)
        v(2) = -spec.boundGain;
    end
    if pos(3,boidNum) < -(spec.boundLim - .1 * spec.boundLim)
        v(3)  = spec.boundGain;
    elseif pos(3,boidNum) > (spec.boundLim - .1 * spec.boundLim)
        v(3) = -spec.boundGain;
    end
end