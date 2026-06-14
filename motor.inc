#define FULL 1000000
#define CCW 0d115000
#define STOP 0d75000
#define CW 0d37500
declare motor{
	output power,HEX[4],HEXpwm[4],HEXpwm1[4],HEXpwm2[4],HEXpwm3[4],HEXpwm4[4],HEXpwm5[4];
	input sw[2],push,push_minus,set_RL;
}
