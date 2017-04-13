//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Fri Mar 31 05:15:49 2017
//Host        : UsmanYG running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR2_addr,
    DDR2_ba,
    DDR2_cas_n,
    DDR2_ck_n,
    DDR2_ck_p,
    DDR2_cke,
    DDR2_cs_n,
    DDR2_dm,
    DDR2_dq,
    DDR2_dqs_n,
    DDR2_dqs_p,
    DDR2_odt,
    DDR2_ras_n,
    DDR2_we_n,
    VGA_BLUE,
    VGA_GREEN,
    VGA_HS,
    VGA_RED,
    VGA_VS,
    led_16bits_tri_o,
    music,
    music_enable,
    reset,
    rx,
    sys_clock,
    tx,
    uart_rxd,
    uart_txd,
    usb_uart_rxd,
    usb_uart_txd);
  output [12:0]DDR2_addr;
  output [2:0]DDR2_ba;
  output DDR2_cas_n;
  output [0:0]DDR2_ck_n;
  output [0:0]DDR2_ck_p;
  output [0:0]DDR2_cke;
  output [0:0]DDR2_cs_n;
  output [1:0]DDR2_dm;
  inout [15:0]DDR2_dq;
  inout [1:0]DDR2_dqs_n;
  inout [1:0]DDR2_dqs_p;
  output [0:0]DDR2_odt;
  output DDR2_ras_n;
  output DDR2_we_n;
  output [3:0]VGA_BLUE;
  output [3:0]VGA_GREEN;
  output VGA_HS;
  output [3:0]VGA_RED;
  output VGA_VS;
  output [15:0]led_16bits_tri_o;
  output music;
  output music_enable;
  input reset;
  input rx;
  input sys_clock;
  output tx;
  input uart_rxd;
  output uart_txd;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [12:0]DDR2_addr;
  wire [2:0]DDR2_ba;
  wire DDR2_cas_n;
  wire [0:0]DDR2_ck_n;
  wire [0:0]DDR2_ck_p;
  wire [0:0]DDR2_cke;
  wire [0:0]DDR2_cs_n;
  wire [1:0]DDR2_dm;
  wire [15:0]DDR2_dq;
  wire [1:0]DDR2_dqs_n;
  wire [1:0]DDR2_dqs_p;
  wire [0:0]DDR2_odt;
  wire DDR2_ras_n;
  wire DDR2_we_n;
  wire [3:0]VGA_BLUE;
  wire [3:0]VGA_GREEN;
  wire VGA_HS;
  wire [3:0]VGA_RED;
  wire VGA_VS;
  wire [15:0]led_16bits_tri_o;
  wire music;
  wire music_enable;
  wire reset;
  wire rx;
  wire sys_clock;
  wire tx;
  wire uart_rxd;
  wire uart_txd;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.DDR2_addr(DDR2_addr),
        .DDR2_ba(DDR2_ba),
        .DDR2_cas_n(DDR2_cas_n),
        .DDR2_ck_n(DDR2_ck_n),
        .DDR2_ck_p(DDR2_ck_p),
        .DDR2_cke(DDR2_cke),
        .DDR2_cs_n(DDR2_cs_n),
        .DDR2_dm(DDR2_dm),
        .DDR2_dq(DDR2_dq),
        .DDR2_dqs_n(DDR2_dqs_n),
        .DDR2_dqs_p(DDR2_dqs_p),
        .DDR2_odt(DDR2_odt),
        .DDR2_ras_n(DDR2_ras_n),
        .DDR2_we_n(DDR2_we_n),
        .VGA_BLUE(VGA_BLUE),
        .VGA_GREEN(VGA_GREEN),
        .VGA_HS(VGA_HS),
        .VGA_RED(VGA_RED),
        .VGA_VS(VGA_VS),
        .led_16bits_tri_o(led_16bits_tri_o),
        .music(music),
        .music_enable(music_enable),
        .reset(reset),
        .rx(rx),
        .sys_clock(sys_clock),
        .tx(tx),
        .uart_rxd(uart_rxd),
        .uart_txd(uart_txd),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
