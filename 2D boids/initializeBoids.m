function [pos,velocity] = initializeBoids(n,focusDist,vLimit)
    for i = 1 :n
        pos(:,i) = 200000*rand(2,1)-100000;
%         theta = 2*pi*rand;
%         dir(:,i) = [cos(theta) sin(theta)];
%         focus(:,i) = pos(:,i) + focusDist*dir(:,i);
        velocity(:,i) = vLimit*rand(1,2)-vLimit/2;
    end
end