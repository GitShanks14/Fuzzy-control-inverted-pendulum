hold on;
fill([-l*5 l*5 l*5 -l*5],[-l*5 -l*5 l*5  l*5],'w');
plot([u(i) u(i)+l*sin(phi(i))],[0 l*cos(phi(i))],'b','LineWidth',3);
plot(u(i)+l*sin(phi(i)),l*cos(phi(i)),'Marker','o','MarkerSize',20, ...
 'MarkerFaceColor','r','MarkerEdgeColor','r');
xlim([-l*5,l*5]);
ylim([-l*5 5*l]);
frame = getframe(gcf);