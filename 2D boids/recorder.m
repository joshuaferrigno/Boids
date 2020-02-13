function recorder(titlestr,pos,velocity,n,boundLim,boundGain,sepDist,focusDist,frameDist,vLimit,local,noise)
    set(gca,'nextplot','replacechildren'); 
    v = VideoWriter([titlestr,'.avi']);
    v.Quality = 100;
    v.FrameRate = 30;
    open(v);
    
    for j = 1 : 1000
        focus = zeros(2,n);
        [pos,velocity] = update(n,pos,velocity,boundLim,boundGain,sepDist,vLimit,local,noise);
        plot(pos(1,:),pos(2,:),'r.','MarkerSize',20*(2/3))
        hold on
        for i = 1 : n
            focus(:,i) = velocity(:,i)*focusDist/norm(velocity(:,i)) + pos(:,i);
%             plot([pos(1,i) focus(1,i)],[pos(2,i) focus(2,i)],'k-')
        end
        plot(focus(1,:),focus(2,:),'o','MarkerSize',2,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63])
%         Sv = swarm(pos,velocity,boundLim);
%         quiver(Sv(1),Sv(2),Sv(3),Sv(4),'-k','LineWidth',5,'MaxHeadSize',5,'ShowArrowHead','on','AutoScale','on')
        axis([-frameDist frameDist -frameDist frameDist])
        title('Boid Simulation')
%         grid on
        drawnow

        q = getframe(gcf);
        writeVideo(v,q);
        hold off
    end
    close(v);
end