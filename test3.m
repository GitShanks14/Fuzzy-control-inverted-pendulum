x(i) = 1;

figure
hold on
fill([-l*5 l*5 l*5 -l*5],[-l*5 -l*5 l*5  l*5],'w');
plot([x(i) x(i)+l*sin(phi(i))],[0 l*cos(phi(i))],'b','LineWidth',3);
plot(x(i)+l*sin(phi(i)),l*cos(phi(i)),'Marker','o','MarkerSize',20, ...
 'MarkerFaceColor','r','MarkerEdgeColor','r');
xlim([-l*5,l*5]);
ylim([-l*5 5*l]);


fill([-l*1.2 l*1.2 l*1.2 -l*1.2],[-l*1.2 -l*1.2 l*1.2  l*1.2],'w');
        xlim([-l*1.2,l*1.2]);
        ylim([-l*1.2,1.2*l]);
        plot([0 l*sin(phi(i))],[0 l*cos(phi(i))],'b','LineWidth',3);
        plot(l*sin(phi(i)),l*cos(phi(i)),'Marker','o','MarkerSize',20, ...
             'MarkerFaceColor','r','MarkerEdgeColor','r');