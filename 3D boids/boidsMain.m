% function boidsMain(spec)

% TO - DO:

% 3D SIM
% clear all
close all
% clc

% boid count
spec.n = 750;


spec.focusDist = 1;
spec.boundLim = 100;
spec.boundGain = 1;
spec.sepDist = 2;
spec.frameDist = 100;
spec.vLimit = 4;
spec.titlestr = 'Boid Sim - 3';
% local distance
spec.local = 25;
spec.noise = 0;


% initialize boids randomly
[pos,velocity] = initializeBoids(spec);

% create boid object
% a = BOID(n,pos,velocity);

% draw the boids and their focus
% draw(a)

recorder(pos,velocity,spec);
% recorderChaos(titlestr,pos,velocity,n,boundLim,boundGain,sepDist,focusDist,frameDist,vLimit,local,noise);
% for j = 1 : 250
%     [pos,velocity] = update(n,pos,velocity,boundLim,boundGain,sepDist,vLimit);
% %     a.pos = pos;
% %     a.velocity = velocity;
%     plot(pos(1,:),pos(2,:),'r.','MarkerSize',20)
%     hold on
%     for i = 1 : n
%         focus(:,i) = velocity(:,i)*focusDist/norm(velocity(:,i)) + pos(:,i);
%         plot([pos(1,i) focus(1,i)],[pos(2,i) focus(2,i)],'k-')
%     end
%     plot(focus(1,:),focus(2,:),'o','MarkerSize',3,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63])
%     axis([-15000 15000 -15000 15000])
%     drawnow
%     hold off
%     pause(.01)
% end
% 
% 
% 
