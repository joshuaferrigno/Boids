function recorderChaos(titlestr,pos,velocity,n,boundLim,boundGain,sepDist,focusDist,frameDist,vLimit,local,noise)
    h = figure('units','normalized','outerposition',[0 0 1 1]);
    set(gca,'nextplot','replacechildren'); 
    v = VideoWriter([titlestr,'.avi']);
    v.Quality = 100;
    v.FrameRate = 30;
    open(v);
    
    velocity1 = velocity;
    velocity2 = velocity;
    velocity3 = velocity;
    velocity4 = velocity;
    
    pos1 = pos;
    pos2 = pos;
    pos3 = pos;
    pos4 = pos;
    
    for j = 1 : 1000     
        h = subplot(2,2,1);
        
        [pos1,velocity1] = update(n,pos1,velocity1,boundLim,boundGain,sepDist,vLimit,local,0);
        plot(pos1(1,:),pos1(2,:),'r.','MarkerSize',20)
        hold on
        for i = 1 : n
            focus1(:,i) = velocity1(:,i)*focusDist/norm(velocity1(:,i)) + pos1(:,i);
        end
        plot(focus1(1,:),focus1(2,:),'o','MarkerSize',3,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63])
        axis([-frameDist frameDist -frameDist frameDist])
        title('Boid Simulation [noise = 0%]')
        drawnow
        hold off
        
        h = subplot(2,2,2);
        
        [pos2,velocity2] = update(n,pos2,velocity2,boundLim,boundGain,sepDist,vLimit,local,noise*.33333);
        plot(pos2(1,:),pos2(2,:),'r.','MarkerSize',20)
        hold on
        for i = 1 : n
            focus2(:,i) = velocity2(:,i)*focusDist/norm(velocity2(:,i)) + pos2(:,i);
        end
        plot(focus2(1,:),focus2(2,:),'o','MarkerSize',3,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63])
        axis([-frameDist frameDist -frameDist frameDist])
        title('Boid Simulation [noise = 33%]')
        drawnow
        hold off
        
        h = subplot(2,2,3);
        
        [pos3,velocity3] = update(n,pos3,velocity3,boundLim,boundGain,sepDist,vLimit,local,noise*.66666666);
        plot(pos3(1,:),pos3(2,:),'r.','MarkerSize',20)
        hold on
        for i = 1 : n
            focus3(:,i) = velocity3(:,i)*focusDist/norm(velocity3(:,i)) + pos3(:,i);
        end
        plot(focus3(1,:),focus3(2,:),'o','MarkerSize',3,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63])
        axis([-frameDist frameDist -frameDist frameDist])
        title('Boid Simulation [noise = 66%]')
        drawnow
        hold off
        
        h = subplot(2,2,4);
        
        [pos4,velocity4] = update(n,pos4,velocity4,boundLim,boundGain,sepDist,vLimit,local,noise);
        plot(pos4(1,:),pos4(2,:),'r.','MarkerSize',20)
        hold on
        for i = 1 : n
            focus4(:,i) = velocity4(:,i)*focusDist/norm(velocity4(:,i)) + pos4(:,i);
        end
        plot(focus4(1,:),focus4(2,:),'o','MarkerSize',3,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63])
        axis([-frameDist frameDist -frameDist frameDist])
        title('Boid Simulation [noise = 100%]')
        drawnow
        
        q = getframe(gcf);
        writeVideo(v,q);
        hold off
    end
    close(v);
end