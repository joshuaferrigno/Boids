classdef BOID
    properties
% boid count
        n
% boid position
        pos
% boid direction
% boid focus
        velocity
    end
    methods
        function obj = BOID(val1,val2,val3)
        if nargin == 3
            obj.n = val1;
            obj.pos = val2;
            obj.velocity = val3;
        end
        end  
        function draw(obj)
            plot(obj.pos(1,:),obj.pos(2,:),'r.','MarkerSize',20)
            hold on
%             for i = 1 : obj.n
%                 plot([obj.pos(1,i) obj.focus(1,i)],[obj.pos(2,i) obj.focus(2,i)],'k-')
%             end
%             plot(obj.focus(1,:),obj.focus(2,:),'o','MarkerSize',4,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63])
            axis([-150 150 -150 150])
            drawnow
            hold off
        end
    end
end