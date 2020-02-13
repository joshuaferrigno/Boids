function [pos,velocity] = initializeBoids(spec)
    for i = 1 :spec.n
        pos(:,i) = 200*rand(3,1)-100;
%         theta = 2*pi*rand;
%         dir(:,i) = [cos(theta) sin(theta)];
%         focus(:,i) = pos(:,i) + focusDist*dir(:,i);
        velocity(:,i) = spec.vLimit*rand(1,3)-spec.vLimit/2;
    end
end