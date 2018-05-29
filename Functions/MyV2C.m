function y=MyV2C(x)

[nx,ny]=size(x);
y=zeros(nx*ny/2,1);
y=x(1:nx*ny/2)+i*x(nx*ny/2+1:nx*ny);