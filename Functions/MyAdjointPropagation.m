function eta=MyAdjointPropagation(S,E,Nx,Ny,Nz,phase)


cEsp=ifftshift(conj(ifft2(conj(real(S)))));

cEs=conj(phase).*repmat(cEsp,[1 1 Nz]);

eta=zeros(Nx,Ny,Nz);
for i=1:Nz
    eta(:,:,i)=conj(fft2(conj(ifftshift(cEs(:,:,i)))));
end

eta=conj(E).*eta;