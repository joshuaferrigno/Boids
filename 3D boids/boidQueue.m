% boidQueue


% QUEUE 1
spec.n = 750;

spec.focusDist = 1;
spec.boundLim = 100;
spec.boundGain = 1;
spec.sepDist = 2;
spec.frameDist = 100;
spec.vLimit = 4;
spec.titlestr = 'Boid Sim - 4 LOCAL 15';
spec.local = 15;
spec.noise = 0;


boidsMain(spec)
disp('BOID QUEUE 1 COMPLETE')

% QUEUE 2
spec.n = 750;

spec.focusDist = 1;
spec.boundLim = 100;
spec.boundGain = 2;
spec.sepDist = 2;
spec.frameDist = 100;
spec.vLimit = 4;
spec.titlestr = 'Boid Sim - 5 BOUNDGAIN 2';
% local distance
spec.local = 25;
spec.noise = 0;


boidsMain(spec)
disp('BOID QUEUE 2 COMPLETE')

% QUEUE 3
spec.n = 750;

spec.focusDist = 3;
spec.boundLim = 100;
spec.boundGain = 3;
spec.sepDist = 2;
spec.frameDist = 100;
spec.vLimit = 4;
spec.titlestr = 'Boid Sim - 6 BOUNDGAIN 3';
% local distance
spec.local = 25;
spec.noise = 0;


boidsMain(spec)
disp('BOID QUEUE 3 COMPLETE')

% QUEUE 4
spec.n = 1500;

spec.focusDist = 1;
spec.boundLim = 100;
spec.boundGain = 1;
spec.sepDist = 2;
spec.frameDist = 100;
spec.vLimit = 4;
spec.titlestr = 'Boid Sim - 7 LOCAL 10 N:1500';
% local distance
spec.local = 10;
spec.noise = 0;


boidsMain(spec)
disp('BOID QUEUE 4 COMPLETE')

% QUEUE 5
spec.n = 450;

spec.focusDist = 1;
spec.boundLim = 50;
spec.boundGain = 1.5;
spec.sepDist = 2;
spec.frameDist = 50;
spec.vLimit = 2;
spec.titlestr = 'Boid Sim - 8 BOUNDLIM 50 N:450';
% local distance
spec.local = 10;
spec.noise = 0;


boidsMain(spec)
disp('BOID QUEUE 5 COMPLETE')
