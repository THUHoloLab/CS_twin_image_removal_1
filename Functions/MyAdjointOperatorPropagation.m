function eta=MyAdjointOperatorPropagation(S,E,Nx,Ny,Nz,phase)

S=reshape(MyV2C(S),Nx,Ny);

eta=MyAdjointPropagation(S,E,Nx,Ny,Nz,phase);

eta=MyC2V(eta(:));
