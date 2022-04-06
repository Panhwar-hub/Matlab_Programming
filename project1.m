brown = [0.4 0.2 0]; % colour definition
figure, hold on, axis equal off
t = linspace(0,2*pi,100);
fill(sin(t),cos(t),brown,’EdgeColor’,brown) % face
fill(sin(t)*0.5+1,cos(t)*0.5+1,brown,’EdgeColor’,brown)
fill(sin(t)*0.5-1,cos(t)*0.5+1,brown,’EdgeColor’,brown)
fill(sin(t)*0.2+0.3,cos(t)*0.4,’w’,’EdgeColor’,’w’)
fill(sin(t)*0.2-0.3,cos(t)*0.4,’w’,’EdgeColor’,’w’)
fill(sin(t)*0.1+0.28,cos(t)*0.1-0.2,’k’,’EdgeColor’,’k’)
fill(sin(t)*0.1-0.28,cos(t)*0.1-0.2,’k’,’EdgeColor’,’k’)