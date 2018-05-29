function y=MyTVphi(x,Nvx,Nvy,Nvz)

% xx = phase_unwrap(angle(x));

X=reshape(x,Nvx,Nvy,Nvz);

[y,dif]=MyTVnorm((X));
