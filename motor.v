
/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Mon Dec 30 23:38:29 2024
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module motor ( p_reset , m_clock , power , sw );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  output power;
  wire power;
  input [1:0] sw;
  wire [1:0] sw;
  reg [30:0] count;
  reg pwm;
  wire _net_0;
  wire _net_1;
  wire _net_2;
  wire _net_3;
  wire _net_4;
  wire _net_5;
  wire _net_6;
  wire _net_7;
  wire _net_8;

   assign  _net_0 = (sw==2'b00);
   assign  _net_1 = 
// synthesis translate_off
// synopsys translate_off
(_net_0)? 
// synthesis translate_on
// synopsys translate_on
((_net_0)?(count <= 31'b0000000000000001110000010011100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
(_net_0)? 
// synthesis translate_on
// synopsys translate_on
((_net_0)?((count < 31'b0000000000011110100001001000000)&(count > 31'b0000000000000001110000010011100)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_3 = 
// synthesis translate_off
// synopsys translate_off
((~_net_0))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_0))?((sw==2'b01)|(sw==2'b10)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
(((~_net_0)&_net_3))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_0)&_net_3))?(count <= 31'b0000000000000001001001001111100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_5 = 
// synthesis translate_off
// synopsys translate_off
(((~_net_0)&_net_3))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_0)&_net_3))?((count < 31'b0000000000011110100001001000000)&(count > 31'b0000000000000001001001001111100)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
(((~_net_0)&(~_net_3)))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_0)&(~_net_3)))?(count <= 31'b0000000000000000100010001011100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
(((~_net_0)&(~_net_3)))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_0)&(~_net_3)))?((count < 31'b0000000000011110100001001000000)&(count > 31'b0000000000000000100010001011100)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_8 = (count==31'b0000000000011110100001001000000);
   assign  power = pwm;
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     count <= 31'b0000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((~_net_8)&_net_8))   count <= 31'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((~_net_8))
      count <= (count+31'b0000000000000000000000000000001);
else if (_net_8)
      count <= 31'b0000000000000000000000000000001;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((~_net_8)|_net_8)==1'b1) ||
 (((~_net_8)|_net_8)==1'b0) ) begin
 if (((~_net_8)&_net_8))
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
if (((((((((~_net_0)&(~_net_3))&_net_7)&(((~_net_0)&(~_net_3))&_net_6))|(((((~_net_0)&(~_net_3))&_net_7)|(((~_net_0)&(~_net_3))&_net_6))&(((~_net_0)&_net_3)&_net_5)))|((((((~_net_0)&(~_net_3))&_net_7)|(((~_net_0)&(~_net_3))&_net_6))|(((~_net_0)&_net_3)&_net_5))&(((~_net_0)&_net_3)&_net_4)))|(((((((~_net_0)&(~_net_3))&_net_7)|(((~_net_0)&(~_net_3))&_net_6))|(((~_net_0)&_net_3)&_net_5))|(((~_net_0)&_net_3)&_net_4))&(_net_0&_net_2)))|((((((((~_net_0)&(~_net_3))&_net_7)|(((~_net_0)&(~_net_3))&_net_6))|(((~_net_0)&_net_3)&_net_5))|(((~_net_0)&_net_3)&_net_4))|(_net_0&_net_2))&(_net_0&_net_1))))   pwm <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((((~_net_0)&(~_net_3))&_net_7))
      pwm <= 1'b0;
else if ((((~_net_0)&(~_net_3))&_net_6))
      pwm <= 1'b1;
else if ((((~_net_0)&_net_3)&_net_5))
      pwm <= 1'b0;
else if ((((~_net_0)&_net_3)&_net_4))
      pwm <= 1'b1;
else if ((_net_0&_net_2))
      pwm <= 1'b0;
else if ((_net_0&_net_1))
      pwm <= 1'b1;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((((~_net_0)&(~_net_3))&_net_7)|(((~_net_0)&(~_net_3))&_net_6))|(((~_net_0)&_net_3)&_net_5))|(((~_net_0)&_net_3)&_net_4))|(_net_0&_net_2))|(_net_0&_net_1))==1'b1) ||
 (((((((((~_net_0)&(~_net_3))&_net_7)|(((~_net_0)&(~_net_3))&_net_6))|(((~_net_0)&_net_3)&_net_5))|(((~_net_0)&_net_3)&_net_4))|(_net_0&_net_2))|(_net_0&_net_1))==1'b0) ) begin
 if (((((((((~_net_0)&(~_net_3))&_net_7)&(((~_net_0)&(~_net_3))&_net_6))|(((((~_net_0)&(~_net_3))&_net_7)|(((~_net_0)&(~_net_3))&_net_6))&(((~_net_0)&_net_3)&_net_5)))|((((((~_net_0)&(~_net_3))&_net_7)|(((~_net_0)&(~_net_3))&_net_6))|(((~_net_0)&_net_3)&_net_5))&(((~_net_0)&_net_3)&_net_4)))|(((((((~_net_0)&(~_net_3))&_net_7)|(((~_net_0)&(~_net_3))&_net_6))|(((~_net_0)&_net_3)&_net_5))|(((~_net_0)&_net_3)&_net_4))&(_net_0&_net_2)))|((((((((~_net_0)&(~_net_3))&_net_7)|(((~_net_0)&(~_net_3))&_net_6))|(((~_net_0)&_net_3)&_net_5))|(((~_net_0)&_net_3)&_net_4))|(_net_0&_net_2))&(_net_0&_net_1))))
 begin $display("Warning: assign collision(motor:pwm) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(motor:pwm) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
endmodule

/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Mon Dec 30 23:38:29 2024
 Licensed to :EVALUATION USER*/
