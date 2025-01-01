
/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Wed Jan  1 21:51:07 2025
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module motor ( p_reset , m_clock , power , HEX , HEXpwm , HEXpwm1 , HEXpwm2 , HEXpwm3 , HEXpwm4 , HEXpwm5 , sw , push );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  output power;
  wire power;
  output [3:0] HEX;
  wire [3:0] HEX;
  output [3:0] HEXpwm;
  wire [3:0] HEXpwm;
  output [3:0] HEXpwm1;
  wire [3:0] HEXpwm1;
  output [3:0] HEXpwm2;
  wire [3:0] HEXpwm2;
  output [3:0] HEXpwm3;
  wire [3:0] HEXpwm3;
  output [3:0] HEXpwm4;
  wire [3:0] HEXpwm4;
  output [3:0] HEXpwm5;
  wire [3:0] HEXpwm5;
  input [1:0] sw;
  wire [1:0] sw;
  input push;
  wire push;
  reg [30:0] count;
  reg pwm;
  reg [3:0] LED;
  reg [30:0] in_botan;
  wire _net_0;
  wire _net_1;
  wire _net_2;
  wire _net_3;
  wire _net_4;
  wire [16:0] _net_5;
  wire _net_6;
  wire [16:0] _net_7;
  wire _net_8;
  wire _net_9;
  wire _net_10;
  wire _net_11;
  wire _net_12;
  wire _net_13;
  wire _net_14;

   assign  _net_0 = ((count==31'b0000000000001111010000100100000)&(push==1'b0));
   assign  _net_1 = (sw==2'b01);
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
(_net_1)? 
// synthesis translate_on
// synopsys translate_on
((_net_1)?(count <= 31'b0000000000000010111010110000000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_3 = 
// synthesis translate_off
// synopsys translate_off
(_net_1)? 
// synthesis translate_on
// synopsys translate_on
((_net_1)?((count < 31'b0000000000001111010000100100000)&(count > 31'b0000000000000010111010110000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
((~_net_1))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_1))?((sw==2'b00)|(sw==2'b11)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_5 = 17'b10010010111111100;
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
(((~_net_1)&_net_4))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_1)&_net_4))?(count <= (({14'b00000000000000,_net_5})+in_botan)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = 17'b10010010111111100;
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
(((~_net_1)&_net_4))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_1)&_net_4))?((count < 31'b0000000000001111010000100100000)&(count > (({14'b00000000000000,_net_7})+in_botan))):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_9 = 
// synthesis translate_off
// synopsys translate_off
(((~_net_1)&_net_4))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_1)&_net_4))?(sw==2'b00):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
((((~_net_1)&_net_4)&(~_net_9)))? 
// synthesis translate_on
// synopsys translate_on
(((((~_net_1)&_net_4)&(~_net_9)))?(sw==2'b11):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_11 = 
// synthesis translate_off
// synopsys translate_off
(((~_net_1)&(~_net_4)))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_1)&(~_net_4)))?(sw==2'b10):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_12 = 
// synthesis translate_off
// synopsys translate_off
((((~_net_1)&(~_net_4))&_net_11))? 
// synthesis translate_on
// synopsys translate_on
(((((~_net_1)&(~_net_4))&_net_11))?(count <= 31'b0000000000000000100010001011100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_13 = 
// synthesis translate_off
// synopsys translate_off
((((~_net_1)&(~_net_4))&_net_11))? 
// synthesis translate_on
// synopsys translate_on
(((((~_net_1)&(~_net_4))&_net_11))?((count < 31'b0000000000001111010000100100000)&(count > 31'b0000000000000000100010001011100)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_14 = (count==31'b0000000000001111010000100100000);
   assign  power = pwm;
   assign  HEX = LED;
   assign  HEXpwm = (in_botan[3:0]);
   assign  HEXpwm1 = (in_botan[7:4]);
   assign  HEXpwm2 = (in_botan[11:8]);
   assign  HEXpwm3 = (in_botan[15:12]);
   assign  HEXpwm4 = (in_botan[19:16]);
   assign  HEXpwm5 = (in_botan[23:20]);
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     count <= 31'b0000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((~_net_14)&_net_14))   count <= 31'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((~_net_14))
      count <= (count+31'b0000000000000000000000000000001);
else if (_net_14)
      count <= 31'b0000000000000000000000000000001;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((~_net_14)|_net_14)==1'b1) ||
 (((~_net_14)|_net_14)==1'b0) ) begin
 if (((~_net_14)&_net_14))
 begin $display("Warning: assign collision(motor:count) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(motor:count) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     pwm <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if ((((((((((~_net_1)&(~_net_4))&_net_11)&_net_13)&((((~_net_1)&(~_net_4))&_net_11)&_net_12))|((((((~_net_1)&(~_net_4))&_net_11)&_net_13)|((((~_net_1)&(~_net_4))&_net_11)&_net_12))&(((~_net_1)&_net_4)&_net_8)))|(((((((~_net_1)&(~_net_4))&_net_11)&_net_13)|((((~_net_1)&(~_net_4))&_net_11)&_net_12))|(((~_net_1)&_net_4)&_net_8))&(((~_net_1)&_net_4)&_net_6)))|((((((((~_net_1)&(~_net_4))&_net_11)&_net_13)|((((~_net_1)&(~_net_4))&_net_11)&_net_12))|(((~_net_1)&_net_4)&_net_8))|(((~_net_1)&_net_4)&_net_6))&(_net_1&_net_3)))|(((((((((~_net_1)&(~_net_4))&_net_11)&_net_13)|((((~_net_1)&(~_net_4))&_net_11)&_net_12))|(((~_net_1)&_net_4)&_net_8))|(((~_net_1)&_net_4)&_net_6))|(_net_1&_net_3))&(_net_1&_net_2))))   pwm <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((((~_net_1)&(~_net_4))&_net_11)&_net_13))
      pwm <= 1'b0;
else if (((((~_net_1)&(~_net_4))&_net_11)&_net_12))
      pwm <= 1'b1;
else if ((((~_net_1)&_net_4)&_net_8))
      pwm <= 1'b0;
else if ((((~_net_1)&_net_4)&_net_6))
      pwm <= 1'b1;
else if ((_net_1&_net_3))
      pwm <= 1'b0;
else if ((_net_1&_net_2))
      pwm <= 1'b1;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((((((~_net_1)&(~_net_4))&_net_11)&_net_13)|((((~_net_1)&(~_net_4))&_net_11)&_net_12))|(((~_net_1)&_net_4)&_net_8))|(((~_net_1)&_net_4)&_net_6))|(_net_1&_net_3))|(_net_1&_net_2))==1'b1) ||
 ((((((((((~_net_1)&(~_net_4))&_net_11)&_net_13)|((((~_net_1)&(~_net_4))&_net_11)&_net_12))|(((~_net_1)&_net_4)&_net_8))|(((~_net_1)&_net_4)&_net_6))|(_net_1&_net_3))|(_net_1&_net_2))==1'b0) ) begin
 if ((((((((((~_net_1)&(~_net_4))&_net_11)&_net_13)&((((~_net_1)&(~_net_4))&_net_11)&_net_12))|((((((~_net_1)&(~_net_4))&_net_11)&_net_13)|((((~_net_1)&(~_net_4))&_net_11)&_net_12))&(((~_net_1)&_net_4)&_net_8)))|(((((((~_net_1)&(~_net_4))&_net_11)&_net_13)|((((~_net_1)&(~_net_4))&_net_11)&_net_12))|(((~_net_1)&_net_4)&_net_8))&(((~_net_1)&_net_4)&_net_6)))|((((((((~_net_1)&(~_net_4))&_net_11)&_net_13)|((((~_net_1)&(~_net_4))&_net_11)&_net_12))|(((~_net_1)&_net_4)&_net_8))|(((~_net_1)&_net_4)&_net_6))&(_net_1&_net_3)))|(((((((((~_net_1)&(~_net_4))&_net_11)&_net_13)|((((~_net_1)&(~_net_4))&_net_11)&_net_12))|(((~_net_1)&_net_4)&_net_8))|(((~_net_1)&_net_4)&_net_6))|(_net_1&_net_3))&(_net_1&_net_2))))
 begin $display("Warning: assign collision(motor:pwm) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(motor:pwm) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     LED <= 4'b0000;
else 
// synthesis translate_off
// synopsys translate_off
if (((((((~_net_1)&(~_net_4))&_net_11)&((((~_net_1)&_net_4)&(~_net_9))&_net_10))|(((((~_net_1)&(~_net_4))&_net_11)|((((~_net_1)&_net_4)&(~_net_9))&_net_10))&(((~_net_1)&_net_4)&_net_9)))|((((((~_net_1)&(~_net_4))&_net_11)|((((~_net_1)&_net_4)&(~_net_9))&_net_10))|(((~_net_1)&_net_4)&_net_9))&_net_1)))   LED <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((((~_net_1)&(~_net_4))&_net_11))
      LED <= 4'b0010;
else if (((((~_net_1)&_net_4)&(~_net_9))&_net_10))
      LED <= 4'b0011;
else if ((((~_net_1)&_net_4)&_net_9))
      LED <= 4'b0000;
else if (_net_1)
      LED <= 4'b0001;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((~_net_1)&(~_net_4))&_net_11)|((((~_net_1)&_net_4)&(~_net_9))&_net_10))|(((~_net_1)&_net_4)&_net_9))|_net_1)==1'b1) ||
 (((((((~_net_1)&(~_net_4))&_net_11)|((((~_net_1)&_net_4)&(~_net_9))&_net_10))|(((~_net_1)&_net_4)&_net_9))|_net_1)==1'b0) ) begin
 if (((((((~_net_1)&(~_net_4))&_net_11)&((((~_net_1)&_net_4)&(~_net_9))&_net_10))|(((((~_net_1)&(~_net_4))&_net_11)|((((~_net_1)&_net_4)&(~_net_9))&_net_10))&(((~_net_1)&_net_4)&_net_9)))|((((((~_net_1)&(~_net_4))&_net_11)|((((~_net_1)&_net_4)&(~_net_9))&_net_10))|(((~_net_1)&_net_4)&_net_9))&_net_1)))
 begin $display("Warning: assign collision(motor:LED) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(motor:LED) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     in_botan <= 31'b0000000000000000000000000000000;
else if (_net_0)
      in_botan <= (in_botan+31'b0000000000000000000000010000000);
end
endmodule

/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Wed Jan  1 21:51:07 2025
 Licensed to :EVALUATION USER*/
