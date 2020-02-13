function recorder(pos,velocity,spec)
%     figure('units','normalized','outerposition',[0 0 1 1])
    
    set(gca,'nextplot','replacechildren'); 
    v = VideoWriter([spec.titlestr,'.avi']);
    v.Quality = 100;
    v.FrameRate = 30;
    
    open(v);
    
    for j = 1 : 1000
        focus = zeros(3,spec.n);
        [pos,velocity] = update(pos,velocity,spec);
        plot3(pos(1,:),pos(2,:),pos(3,:),'r.','MarkerSize',20*(2/3))
        hold on
        for i = 1 : spec.n
            focus(:,i) = velocity(:,i)*spec.focusDist/norm(velocity(:,i)) + pos(:,i);
        end
        plot3(focus(1,:),focus(2,:),focus(3,:),'o','MarkerSize',2,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63])
        axis([-spec.frameDist spec.frameDist -spec.frameDist spec.frameDist -spec.frameDist spec.frameDist])
        title('Boid Simulation')
        grid on
        drawnow

        q = getframe(gcf);
        writeVideo(v,q);
        hold off
    end
    close(v);
end