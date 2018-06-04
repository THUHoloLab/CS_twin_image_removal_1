This matlab sofeware is used for removing the twin image in holography by compressive sensing

1. Run the CSmain (input is a test image and output is the twin-image-free reconstruction)

2. Description of the functions
TwIST: two-step iterative shrinkange/threshold algorithm
MyForwardPropagation and MyForwardOperatorPropagation: model the forward propagation
MyAdjointOperatorPropagation and MyAdjointPropagation: model the adjoint propagation
MyMakingPhase: model the propagation phase kernal
MyProjectionTV MyTV3D_conv MyTVnorm MyTVphi MyTVpsi : total viriation functions
Others are Helper functions