% Boids

% TO - DO:

% VECTOR SHOWING AVERAGE POS AND VEL
% VMAX LIMIT - FIX
% LOCAL CLUSTERS OF BOIDS
% FLOCK SCATTERING

clear all
close all
clc

% boid count
n = 150;

% focusDist = 500;
% boundLim = 10000;
% boundGain = 500;
% sepDist = 590;
% frameDist = 15000;
% vLimit = 0;
focusDist = 1500;
boundLim = 100000;
boundGain = 1500;
sepDist = 1500;
frameDist = 100000;
vLimit = 4000;
titlestr = 'Boid Sim - 27';
% local distance
local = 20000;

% figure('units','normalized','outerposition',[0 0 1 1])

% initialize boids randomly
[pos,velocity] = initializeBoids(n,focusDist);

% create boid object
% a = BOID(n,pos,velocity);

% draw the boids and their focus
% draw(a)

recorder(titlestr,pos,velocity,n,boundLim,boundGain,sepDist,focusDist,frameDist,vLimit,local);

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
