
/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Mon Dec 30 23:57:20 2024
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module cam_test ( p_reset , m_clock , in_data , in_data2 , href , href2 , pclk , pclk2 , xclk , xclk2 , c_vsync , c_vsync2 , sda , scl , reset , pwdn , sda2 , scl2 , reset2 , pwdn2 , motor_sig , motor_sig2 , VGA_R , VGA_B , VGA_G , VGA_VS , VGA_HS , HEX0 );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [7:0] in_data;
  wire [7:0] in_data;
  input [7:0] in_data2;
  wire [7:0] in_data2;
  input href;
  wire href;
  input href2;
  wire href2;
  input pclk;
  wire pclk;
  input pclk2;
  wire pclk2;
  output xclk;
  wire xclk;
  output xclk2;
  wire xclk2;
  input c_vsync;
  wire c_vsync;
  input c_vsync2;
  wire c_vsync2;
  output sda;
  wire sda;
  output scl;
  wire scl;
  output reset;
  wire reset;
  output pwdn;
  wire pwdn;
  output sda2;
  wire sda2;
  output scl2;
  wire scl2;
  output reset2;
  wire reset2;
  output pwdn2;
  wire pwdn2;
  output motor_sig;
  wire motor_sig;
  output motor_sig2;
  wire motor_sig2;
  output [3:0] VGA_R;
  wire [3:0] VGA_R;
  output [3:0] VGA_B;
  wire [3:0] VGA_B;
  output [3:0] VGA_G;
  wire [3:0] VGA_G;
  output VGA_VS;
  wire VGA_VS;
  output VGA_HS;
  wire VGA_HS;
  output [7:0] HEX0;
  wire [7:0] HEX0;
  reg [1:0] motor_sw;
  reg [31:0] VGA_plot_num_x;
  reg [31:0] VGA_plot_num_y;
  reg [31:0] plot_num_x;
  wire [31:0] plot_num;
  wire [31:0] plot_nums;
  reg [31:0] plot_num_y;
  reg [31:0] VGA_plot_num_x2;
  reg [31:0] VGA_plot_num_y2;
  reg [31:0] plot_num_x2;
  wire [31:0] plot_num2;
  wire [31:0] plot_nums2;
  reg [31:0] plot_num_y2;
  wire [3:0] _VGA_out_VGA_R;
  wire [3:0] _VGA_out_VGA_B;
  wire [3:0] _VGA_out_VGA_G;
  wire _VGA_out_VGA_VS;
  wire _VGA_out_VGA_HS;
  wire [7:0] _VGA_out_HEX0;
  wire [9:0] _VGA_out_plot_num_x;
  wire [9:0] _VGA_out_plot_num_y;
  wire [3:0] _VGA_out_VGA_RI;
  wire _VGA_out_p_reset;
  wire _VGA_out_m_clock;
  wire [7:0] _camera_out_in_data;
  wire _camera_out_href;
  wire _camera_out_pclk;
  wire _camera_out_xclk;
  wire _camera_out_c_vsync;
  wire _camera_out_sda;
  wire _camera_out_scl;
  wire _camera_out_reset;
  wire _camera_out_pwdn;
  wire [3:0] _camera_out_VGA_R;
  wire [3:0] _camera_out_VGA_B;
  wire [3:0] _camera_out_VGA_G;
  wire [9:0] _camera_out_out_plot_num_x;
  wire _camera_out_time_RGB;
  wire [9:0] _camera_out_out_plot_num_y;
  wire _camera_out_p_reset;
  wire _camera_out_m_clock;
  wire [7:0] _camera_out_1_in_data;
  wire _camera_out_1_href;
  wire _camera_out_1_pclk;
  wire _camera_out_1_xclk;
  wire _camera_out_1_c_vsync;
  wire _camera_out_1_sda;
  wire _camera_out_1_scl;
  wire _camera_out_1_reset;
  wire _camera_out_1_pwdn;
  wire [3:0] _camera_out_1_VGA_R;
  wire [3:0] _camera_out_1_VGA_B;
  wire [3:0] _camera_out_1_VGA_G;
  wire [9:0] _camera_out_1_out_plot_num_x;
  wire _camera_out_1_time_RGB;
  wire [9:0] _camera_out_1_out_plot_num_y;
  wire _camera_out_1_p_reset;
  wire _camera_out_1_m_clock;
  wire [3:0] _vram_x_data;
  wire [13:0] _vram_x_rdaddress;
  wire [13:0] _vram_x_wraddress;
  wire _vram_x_wren;
  wire [3:0] _vram_x_q;
  wire _vram_x_p_reset;
  wire _vram_x_m_clock;
  wire [3:0] _vram_x_5_data;
  wire [13:0] _vram_x_5_rdaddress;
  wire [13:0] _vram_x_5_wraddress;
  wire _vram_x_5_wren;
  wire [3:0] _vram_x_5_q;
  wire _vram_x_5_p_reset;
  wire _vram_x_5_m_clock;
  wire [3:0] _vram_x_4_data;
  wire [13:0] _vram_x_4_rdaddress;
  wire [13:0] _vram_x_4_wraddress;
  wire _vram_x_4_wren;
  wire [3:0] _vram_x_4_q;
  wire _vram_x_4_p_reset;
  wire _vram_x_4_m_clock;
  wire [3:0] _vram_x_3_data;
  wire [13:0] _vram_x_3_rdaddress;
  wire [13:0] _vram_x_3_wraddress;
  wire _vram_x_3_wren;
  wire [3:0] _vram_x_3_q;
  wire _vram_x_3_p_reset;
  wire _vram_x_3_m_clock;
  wire [3:0] _vram_x_2_data;
  wire [13:0] _vram_x_2_rdaddress;
  wire [13:0] _vram_x_2_wraddress;
  wire _vram_x_2_wren;
  wire [3:0] _vram_x_2_q;
  wire _vram_x_2_p_reset;
  wire _vram_x_2_m_clock;
  wire [3:0] _vram_x_1_data;
  wire [13:0] _vram_x_1_rdaddress;
  wire [13:0] _vram_x_1_wraddress;
  wire _vram_x_1_wren;
  wire [3:0] _vram_x_1_q;
  wire _vram_x_1_p_reset;
  wire _vram_x_1_m_clock;
  wire _motor_x_power;
  wire [1:0] _motor_x_sw;
  wire _motor_x_p_reset;
  wire _motor_x_m_clock;
  wire _motor_x_1_power;
  wire [1:0] _motor_x_1_sw;
  wire _motor_x_1_p_reset;
  wire _motor_x_1_m_clock;
  wire [9:0] _net_0;
  wire [9:0] _net_1;
  wire [63:0] _net_2;
  wire [9:0] _net_3;
  wire [9:0] _net_4;
  wire [63:0] _net_5;
  wire [9:0] _net_6;
  wire [9:0] _net_7;
  wire [63:0] _net_8;
  wire [9:0] _net_9;
  wire [9:0] _net_10;
  wire [63:0] _net_11;
  wire _net_12;
  wire [31:0] _net_13;
  wire [31:0] _net_14;
  wire [31:0] _net_15;
  wire [31:0] _net_16;
  wire _net_17;
  wire [31:0] _net_18;
  wire [31:0] _net_19;
  wire [31:0] _net_20;
  wire [31:0] _net_21;
  wire _net_22;
  wire [31:0] _net_23;
  wire [31:0] _net_24;
  wire [31:0] _net_25;
  wire [31:0] _net_26;
  wire _net_27;
  wire [31:0] _net_28;
  wire [31:0] _net_29;
  wire [31:0] _net_30;
  wire [31:0] _net_31;
motor motor_x (.m_clock(m_clock), .p_reset( p_reset), .sw(_motor_x_sw), .power(_motor_x_power));
motor motor_x_1 (.m_clock(m_clock), .p_reset( p_reset), .sw(_motor_x_1_sw), .power(_motor_x_1_power));
B vram_x ( .data(_vram_x_data),.inclock(pclk),.outclock(m_clock), .rdaddress(_vram_x_rdaddress), .wraddress(_vram_x_wraddress), .wren(_vram_x_wren), .q(_vram_x_q));
G vram_x_2 ( .data(_vram_x_2_data),.inclock(pclk),.outclock(m_clock), .rdaddress(_vram_x_2_rdaddress), .wraddress(_vram_x_2_wraddress), .wren(_vram_x_2_wren), .q(_vram_x_2_q));
R vram_x_1 ( .data(_vram_x_1_data),.inclock(pclk),.outclock(m_clock), .rdaddress(_vram_x_1_rdaddress), .wraddress(_vram_x_1_wraddress), .wren(_vram_x_1_wren), .q(_vram_x_1_q));

B1 vram_x_3 ( .data(_vram_x_3_data),.inclock(pclk2),.outclock(m_clock), .rdaddress(_vram_x_3_rdaddress), .wraddress(_vram_x_3_wraddress), .wren(_vram_x_3_wren), .q(_vram_x_3_q));
G1 vram_x_5 ( .data(_vram_x_5_data),.inclock(pclk2),.outclock(m_clock), .rdaddress(_vram_x_5_rdaddress), .wraddress(_vram_x_5_wraddress), .wren(_vram_x_5_wren), .q(_vram_x_5_q));
R1 vram_x_4 ( .data(_vram_x_4_data),.inclock(pclk2),.outclock(m_clock), .rdaddress(_vram_x_4_rdaddress), .wraddress(_vram_x_4_wraddress), .wren(_vram_x_4_wren), .q(_vram_x_4_q));
camera camera_out (.m_clock(m_clock), .p_reset( p_reset), .out_plot_num_y(_camera_out_out_plot_num_y), .out_plot_num_x(_camera_out_out_plot_num_x), .time_RGB(_camera_out_time_RGB), .VGA_R(_camera_out_VGA_R), .VGA_B(_camera_out_VGA_B), .VGA_G(_camera_out_VGA_G), .sda(_camera_out_sda), .scl(_camera_out_scl), .reset(_camera_out_reset), .pwdn(_camera_out_pwdn), .c_vsync(_camera_out_c_vsync), .xclk(_camera_out_xclk), .pclk(_camera_out_pclk), .href(_camera_out_href), .in_data(_camera_out_in_data));
camera camera_out_1 (.m_clock(m_clock), .p_reset( p_reset), .out_plot_num_y(_camera_out_1_out_plot_num_y), .out_plot_num_x(_camera_out_1_out_plot_num_x), .time_RGB(_camera_out_1_time_RGB), .VGA_R(_camera_out_1_VGA_R), .VGA_B(_camera_out_1_VGA_B), .VGA_G(_camera_out_1_VGA_G), .sda(_camera_out_1_sda), .scl(_camera_out_1_scl), .reset(_camera_out_1_reset), .pwdn(_camera_out_1_pwdn), .c_vsync(_camera_out_1_c_vsync), .xclk(_camera_out_1_xclk), .pclk(_camera_out_1_pclk), .href(_camera_out_1_href), .in_data(_camera_out_1_in_data));
VGA VGA_out (.m_clock(m_clock), .p_reset( p_reset), .VGA_RI(_VGA_out_VGA_RI), .VGA_R(_VGA_out_VGA_R), .VGA_B(_VGA_out_VGA_B), .VGA_G(_VGA_out_VGA_G), .VGA_VS(_VGA_out_VGA_VS), .VGA_HS(_VGA_out_VGA_HS), .HEX0(_VGA_out_HEX0), .plot_num_x(_VGA_out_plot_num_x), .plot_num_y(_VGA_out_plot_num_y));


// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((_net_17&_net_12))
 begin $display("Warning: assign collision(cam_test:plot_num) at %d",$time);
if (_net_17) $display("assert (_net_17) line 75 at %d\n",$time);
if (_net_12) $display("assert (_net_12) line 59 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  plot_num = 
// synthesis translate_off
// synopsys translate_off
((_net_17&_net_12))? 32'bx :((_net_17|_net_12))? 
// synthesis translate_on
// synopsys translate_on
((_net_17)?_net_21:32'b0)|
    ((_net_12)?_net_16:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((((~_net_22)&_net_27)&_net_22))
 begin $display("Warning: assign collision(cam_test:plot_nums) at %d",$time);
if (((~_net_22)&_net_27)) $display("assert (((~_net_22)&_net_27)) line 99 at %d\n",$time);
if (_net_22) $display("assert (_net_22) line 90 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  plot_nums = 
// synthesis translate_off
// synopsys translate_off
((((~_net_22)&_net_27)&_net_22))? 32'bx :((((~_net_22)&_net_27)|_net_22))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_22)&_net_27))?_net_31:32'b0)|
    ((_net_22)?_net_26:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _VGA_out_p_reset = p_reset;
   assign  _VGA_out_m_clock = m_clock;
   assign  _camera_out_in_data = in_data;
   assign  _camera_out_href = href;
   assign  _camera_out_pclk = pclk;
   assign  _camera_out_c_vsync = c_vsync;
   assign  _camera_out_p_reset = p_reset;
   assign  _camera_out_m_clock = m_clock;
   assign  _camera_out_1_in_data = in_data2;
   assign  _camera_out_1_href = href2;
   assign  _camera_out_1_pclk = pclk2;
   assign  _camera_out_1_c_vsync = c_vsync2;
   assign  _camera_out_1_p_reset = p_reset;
   assign  _camera_out_1_m_clock = m_clock;
   assign  _vram_x_data = 
// synthesis translate_off
// synopsys translate_off
(_net_12)? 
// synthesis translate_on
// synopsys translate_on
((_net_12)?_camera_out_VGA_B:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(_net_22)? 
// synthesis translate_on
// synopsys translate_on
((_net_22)?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_12)? 
// synthesis translate_on
// synopsys translate_on
((_net_12)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_12)? 
// synthesis translate_on
// synopsys translate_on
_net_12
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_p_reset = p_reset;
   assign  _vram_x_m_clock = m_clock;
   assign  _vram_x_5_data = 
// synthesis translate_off
// synopsys translate_off
(_net_17)? 
// synthesis translate_on
// synopsys translate_on
((_net_17)?_camera_out_1_VGA_R:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_5_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(((~_net_22)&_net_27))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_22)&_net_27))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_5_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_17)? 
// synthesis translate_on
// synopsys translate_on
((_net_17)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_5_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_17)? 
// synthesis translate_on
// synopsys translate_on
_net_17
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_5_p_reset = p_reset;
   assign  _vram_x_5_m_clock = m_clock;
   assign  _vram_x_4_data = 
// synthesis translate_off
// synopsys translate_off
(_net_17)? 
// synthesis translate_on
// synopsys translate_on
((_net_17)?_camera_out_1_VGA_G:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_4_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(((~_net_22)&_net_27))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_22)&_net_27))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_4_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_17)? 
// synthesis translate_on
// synopsys translate_on
((_net_17)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_4_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_17)? 
// synthesis translate_on
// synopsys translate_on
_net_17
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_4_p_reset = p_reset;
   assign  _vram_x_4_m_clock = m_clock;
   assign  _vram_x_3_data = 
// synthesis translate_off
// synopsys translate_off
(_net_17)? 
// synthesis translate_on
// synopsys translate_on
((_net_17)?_camera_out_1_VGA_B:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_3_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(((~_net_22)&_net_27))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_22)&_net_27))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_3_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_17)? 
// synthesis translate_on
// synopsys translate_on
((_net_17)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_3_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_17)? 
// synthesis translate_on
// synopsys translate_on
_net_17
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_3_p_reset = p_reset;
   assign  _vram_x_3_m_clock = m_clock;
   assign  _vram_x_2_data = 
// synthesis translate_off
// synopsys translate_off
(_net_12)? 
// synthesis translate_on
// synopsys translate_on
((_net_12)?_camera_out_VGA_R:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(_net_22)? 
// synthesis translate_on
// synopsys translate_on
((_net_22)?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_12)? 
// synthesis translate_on
// synopsys translate_on
((_net_12)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_12)? 
// synthesis translate_on
// synopsys translate_on
_net_12
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_p_reset = p_reset;
   assign  _vram_x_2_m_clock = m_clock;
   assign  _vram_x_1_data = 
// synthesis translate_off
// synopsys translate_off
(_net_12)? 
// synthesis translate_on
// synopsys translate_on
((_net_12)?_camera_out_VGA_G:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(_net_22)? 
// synthesis translate_on
// synopsys translate_on
((_net_22)?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_12)? 
// synthesis translate_on
// synopsys translate_on
((_net_12)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_12)? 
// synthesis translate_on
// synopsys translate_on
_net_12
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_p_reset = p_reset;
   assign  _vram_x_1_m_clock = m_clock;
   assign  _motor_x_sw = motor_sw;
   assign  _motor_x_p_reset = p_reset;
   assign  _motor_x_m_clock = m_clock;
   assign  _motor_x_1_sw = (~motor_sw);
   assign  _motor_x_1_p_reset = p_reset;
   assign  _motor_x_1_m_clock = m_clock;
   assign  _net_0 = _camera_out_out_plot_num_x;
   assign  _net_1 = _camera_out_out_plot_num_y;
   assign  _net_2 = ({({22'b0000000000000000000000,_net_1}),32'b00000000000000000000000000000000});
   assign  _net_3 = _VGA_out_plot_num_x;
   assign  _net_4 = _VGA_out_plot_num_y;
   assign  _net_5 = ({({22'b0000000000000000000000,_net_4}),32'b00000000000000000000000000000000});
   assign  _net_6 = _camera_out_1_out_plot_num_x;
   assign  _net_7 = _camera_out_1_out_plot_num_y;
   assign  _net_8 = ({({22'b0000000000000000000000,_net_7}),32'b00000000000000000000000000000000});
   assign  _net_9 = (_VGA_out_plot_num_x-10'b0010000000);
   assign  _net_10 = (_VGA_out_plot_num_y-10'b0010000000);
   assign  _net_11 = ({({22'b0000000000000000000000,_net_10}),32'b00000000000000000000000000000000});
   assign  _net_12 = ((((_camera_out_out_plot_num_x >= 10'b0000000000)&(_camera_out_out_plot_num_x < 10'b0010000000))&(_camera_out_out_plot_num_y >= 10'b0000000000))&(_camera_out_out_plot_num_y < 10'b0010000000));
   assign  _net_13 = plot_num_x;
   assign  _net_14 = plot_num_y;
   assign  _net_15 = _net_14;
   assign  _net_16 = (_net_13+_net_15);
   assign  _net_17 = ((((_camera_out_1_out_plot_num_x >= 10'b0000000000)&(_camera_out_1_out_plot_num_x < 10'b0010000000))&(_camera_out_1_out_plot_num_y >= 10'b0000000000))&(_camera_out_1_out_plot_num_y < 10'b0010000000));
   assign  _net_18 = plot_num_x2;
   assign  _net_19 = plot_num_y2;
   assign  _net_20 = _net_19;
   assign  _net_21 = (_net_18+_net_20);
   assign  _net_22 = (((((_VGA_out_plot_num_x-10'b0000000111) >= 10'b0000000000)&((_VGA_out_plot_num_x-10'b0000000111) < 10'b0010000000))&(_VGA_out_plot_num_y >= 10'b0000000000))&(_VGA_out_plot_num_y < 10'b0010000000));
   assign  _net_23 = VGA_plot_num_x;
   assign  _net_24 = VGA_plot_num_y;
   assign  _net_25 = _net_24;
   assign  _net_26 = (_net_23+_net_25);
   assign  _net_27 = 
// synthesis translate_off
// synopsys translate_off
((~_net_22))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_22))?(((((_VGA_out_plot_num_x-10'b0000000111) >= 10'b0010000000)&((_VGA_out_plot_num_x-10'b0000000111) < 10'b0100000000))&(_VGA_out_plot_num_y >= 10'b0010000000))&(_VGA_out_plot_num_y < 10'b0100000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_28 = VGA_plot_num_x;
   assign  _net_29 = VGA_plot_num_y;
   assign  _net_30 = _net_29;
   assign  _net_31 = (_net_28+_net_30);
   assign  xclk = _camera_out_xclk;
   assign  xclk2 = _camera_out_1_xclk;
   assign  sda = _camera_out_sda;
   assign  scl = _camera_out_scl;
   assign  reset = _camera_out_reset;
   assign  pwdn = _camera_out_pwdn;
   assign  sda2 = _camera_out_1_sda;
   assign  scl2 = _camera_out_1_scl;
   assign  reset2 = _camera_out_1_reset;
   assign  pwdn2 = _camera_out_1_pwdn;
   assign  motor_sig = _motor_x_power;
   assign  motor_sig2 = _motor_x_1_power;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((((~_net_22)&(~_net_27))&((~_net_22)&_net_27))|((((~_net_22)&(~_net_27))|((~_net_22)&_net_27))&_net_22)))
 begin $display("Warning: assign collision(cam_test:VGA_R) at %d",$time);
if (((~_net_22)&(~_net_27))) $display("assert (((~_net_22)&(~_net_27))) line 107 at %d\n",$time);
if (((~_net_22)&_net_27)) $display("assert (((~_net_22)&_net_27)) line 105 at %d\n",$time);
if (_net_22) $display("assert (_net_22) line 96 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_R = 
// synthesis translate_off
// synopsys translate_off
(((((~_net_22)&(~_net_27))&((~_net_22)&_net_27))|((((~_net_22)&(~_net_27))|((~_net_22)&_net_27))&_net_22)))? 4'bx :(((((~_net_22)&(~_net_27))|((~_net_22)&_net_27))|_net_22))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_22)&(~_net_27)))?4'b0000:4'b0)|
    ((((~_net_22)&_net_27))?_vram_x_5_q:4'b0)|
    ((_net_22)?_vram_x_2_q:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((((~_net_22)&(~_net_27))&((~_net_22)&_net_27))|((((~_net_22)&(~_net_27))|((~_net_22)&_net_27))&_net_22)))
 begin $display("Warning: assign collision(cam_test:VGA_B) at %d",$time);
if (((~_net_22)&(~_net_27))) $display("assert (((~_net_22)&(~_net_27))) line 109 at %d\n",$time);
if (((~_net_22)&_net_27)) $display("assert (((~_net_22)&_net_27)) line 103 at %d\n",$time);
if (_net_22) $display("assert (_net_22) line 94 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_B = 
// synthesis translate_off
// synopsys translate_off
(((((~_net_22)&(~_net_27))&((~_net_22)&_net_27))|((((~_net_22)&(~_net_27))|((~_net_22)&_net_27))&_net_22)))? 4'bx :(((((~_net_22)&(~_net_27))|((~_net_22)&_net_27))|_net_22))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_22)&(~_net_27)))?4'b0000:4'b0)|
    ((((~_net_22)&_net_27))?_vram_x_3_q:4'b0)|
    ((_net_22)?_vram_x_q:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((((~_net_22)&(~_net_27))&((~_net_22)&_net_27))|((((~_net_22)&(~_net_27))|((~_net_22)&_net_27))&_net_22)))
 begin $display("Warning: assign collision(cam_test:VGA_G) at %d",$time);
if (((~_net_22)&(~_net_27))) $display("assert (((~_net_22)&(~_net_27))) line 108 at %d\n",$time);
if (((~_net_22)&_net_27)) $display("assert (((~_net_22)&_net_27)) line 104 at %d\n",$time);
if (_net_22) $display("assert (_net_22) line 95 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_G = 
// synthesis translate_off
// synopsys translate_off
(((((~_net_22)&(~_net_27))&((~_net_22)&_net_27))|((((~_net_22)&(~_net_27))|((~_net_22)&_net_27))&_net_22)))? 4'bx :(((((~_net_22)&(~_net_27))|((~_net_22)&_net_27))|_net_22))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_22)&(~_net_27)))?4'b0000:4'b0)|
    ((((~_net_22)&_net_27))?_vram_x_4_q:4'b0)|
    ((_net_22)?_vram_x_1_q:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  VGA_VS = _VGA_out_VGA_VS;
   assign  VGA_HS = _VGA_out_VGA_HS;
   assign  HEX0 = _VGA_out_HEX0;
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     motor_sw <= 2'b00;
else if (_net_22)
      motor_sw <= ({1'b0,(((_vram_x_q < 4'b0011)&(_vram_x_1_q < 4'b0011))&(_vram_x_2_q < 4'b0011))});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     VGA_plot_num_x <= 32'b00000000000000000000000000000000;
else   VGA_plot_num_x <= ({22'b0000000000000000000000,_net_3});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     VGA_plot_num_y <= 32'b00000000000000000000000000000000;
else   VGA_plot_num_y <= (_net_5[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_x <= 32'b00000000000000000000000000000000;
else   plot_num_x <= ({22'b0000000000000000000000,_net_0});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_y <= 32'b00000000000000000000000000000000;
else   plot_num_y <= (_net_2[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     VGA_plot_num_x2 <= 32'b00000000000000000000000000000000;
else   VGA_plot_num_x2 <= ({22'b0000000000000000000000,_net_9});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     VGA_plot_num_y2 <= 32'b00000000000000000000000000000000;
else   VGA_plot_num_y2 <= (_net_11[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_x2 <= 32'b00000000000000000000000000000000;
else   plot_num_x2 <= ({22'b0000000000000000000000,_net_6});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_y2 <= 32'b00000000000000000000000000000000;
else   plot_num_y2 <= (_net_8[56:25]);
end
endmodule

/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Mon Dec 30 23:57:20 2024
 Licensed to :EVALUATION USER*/
