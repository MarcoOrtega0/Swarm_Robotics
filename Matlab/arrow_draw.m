function ar=arrow_draw(x,y,yaw,lim,color)
posx=[0.775*(x+lim)/(2*lim)+0.13,0.775*((x+0.22*cos(yaw))+lim)/(2*lim)+0.13];
posy=[0.816*(y+lim)/(2*lim)+0.111,0.816*((y+0.22*sin(yaw))+lim)/(2*lim)+0.111];
ar=annotation("arrow",posx,posy);
ar.HeadStyle='cback2';
ar.Color=color;
ar.HeadLength=12;
ar.HeadWidth=10;
% ar.LineStyle='none';
end

