This matlab sofeware is used for removing the twin image in holography by compressive sensing

1. Run the CSmain (input is a test image and output is the twin-image-free reconstruction)

2. Description of the functions
TwIST: two-step iterative shrinkange/threshold algorithm
MyForwardPropagation and MyForwardOperatorPropagation: model the forward propagation
MyAdjointOperatorPropagation and MyAdjointPropagation: model the adjoint propagation
MyMakingPhase: model the propagation phase kernal
MyProjectionTV MyTV3D_conv MyTVnorm MyTVphi MyTVpsi : total viriation functions
Others are Helper functions

References:
Wenhui Zhang, Liangcai Cao, David J. Brady, Hua Zhang, Ji Cang, Hao Zhang, and Guofan Jin, "Twin-Image-Free Holography: A Compressive Sensing Approach," Physical Review Letters 121, 093902 (2018).
Hua Zhang, Liangcai Cao, Hao Zhang, Wenhui Zhang, Guofan Jin, and David J. Brady, "Efficient block-wise algorithm for compressive holography," Opt. Express 25, 24991-25003 (2017).
Hua Zhang, Liangcai Cao*, Hao Zhang, Wenhui Zhang, Guofan Jin. “Noise reduction for compressive digital one-shot in-line holographic tomography.” HolographyVII, Vol.10022, p.1002207, SPIE, Photonic Asia (2016).
