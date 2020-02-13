% Boids Chaos

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
sepDist = 2000;
frameDist = 100000;
vLimit = 4000;
titlestr = 'Boid Sim - Chaos';
% local distance
local = 20000;
noise = 5500*2/3;

% figure('units','normalized','outerposition',[0 0 1 1])

% initialize boids randomly
[pos,velocity] = initializeBoids(n,focusDist,vLimit);

recorderChaos(titlestr,pos,velocity,n,boundLim,boundGain,sepDist,focusDist,frameDist,vLimit,local,noise);
