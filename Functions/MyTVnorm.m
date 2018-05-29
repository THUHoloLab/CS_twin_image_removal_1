function [y,dif]=MyTVnorm(x)

TV=MyTV3D_conv(((x)));

dif=(sum(abs(TV),4));

y=sum(dif(:));

