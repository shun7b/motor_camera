declare cam_test{
    input in_data[8],in_data2[8];
	input href,href2;
	input pclk,pclk2;
	output xclk,xclk2;
    input c_vsync,c_vsync2;
	output sda,scl,reset,pwdn,sda2,scl2,reset2,pwdn2,motor_sig,motor_sig2;
    output VGA_R[4],VGA_B[4],VGA_G[4],VGA_VS,VGA_HS,HEX0[8];
}