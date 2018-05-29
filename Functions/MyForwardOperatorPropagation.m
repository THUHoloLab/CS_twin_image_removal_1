function S=MyForwardOperatorPropagation(eta,E,Nx,Ny,Nz,phase)

eta=reshape(MyV2C(eta),Nx,Ny,Nz);

S=MyForwardPropagation(eta,E,Nx,Ny,Nz,phase);

S=MyC2V(S(:));
