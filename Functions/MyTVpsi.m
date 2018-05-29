function y=MyTVpsi(x,th,tau,iter,Nvx,Nvy,Nvz)

X=reshape(x,Nvx,Nvy,Nvz);
% XX = phase_unwrap(angle(X));
Y=X-MyProjectionTV(X,tau,th*0.5,iter);

y=reshape(Y,Nvx*Nvy*Nvz,1);