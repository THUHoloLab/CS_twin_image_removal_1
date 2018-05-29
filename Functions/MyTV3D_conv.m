function TV=MyTV3D_conv(x)

[nx,ny,nz]=size(x);
TV=zeros(nx,ny,nz,3);
TV(:,:,:,1)=circshift(x,[-1 0 0])-x;
TV(nx,:,:,1)=0.0;

TV(:,:,:,2)=circshift(x,[0 -1 0])-x;
TV(:,ny,:,2)=0.0;

TV(:,:,:,3)=circshift(x,[0 0 -1])-x;
TV(:,:,nz,3)=0.0;
TV(:,:,:,3)=TV(:,:,:,3).*(1.0);
