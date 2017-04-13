-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:axi_intc:4.1
-- IP Revision: 7

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY axi_intc_v4_1_7;
USE axi_intc_v4_1_7.axi_intc;

ENTITY design_1_microblaze_0_axi_intc_0 IS
  PORT (
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    intr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    processor_clk : IN STD_LOGIC;
    processor_rst : IN STD_LOGIC;
    irq : OUT STD_LOGIC;
    processor_ack : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    interrupt_address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END design_1_microblaze_0_axi_intc_0;

ARCHITECTURE design_1_microblaze_0_axi_intc_0_arch OF design_1_microblaze_0_axi_intc_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_microblaze_0_axi_intc_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_intc IS
    GENERIC (
      C_FAMILY : STRING;
      C_INSTANCE : STRING;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_NUM_INTR_INPUTS : INTEGER;
      C_NUM_SW_INTR : INTEGER;
      C_KIND_OF_INTR : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_KIND_OF_EDGE : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_KIND_OF_LVL : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_ASYNC_INTR : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_NUM_SYNC_FF : INTEGER;
      C_IVAR_RESET_VALUE : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_ENABLE_ASYNC : INTEGER;
      C_HAS_IPR : INTEGER;
      C_HAS_SIE : INTEGER;
      C_HAS_CIE : INTEGER;
      C_HAS_IVR : INTEGER;
      C_HAS_ILR : INTEGER;
      C_IRQ_IS_LEVEL : INTEGER;
      C_IRQ_ACTIVE : STD_LOGIC;
      C_DISABLE_SYNCHRONIZERS : INTEGER;
      C_MB_CLK_NOT_CONNECTED : INTEGER;
      C_HAS_FAST : INTEGER;
      C_EN_CASCADE_MODE : INTEGER;
      C_CASCADE_MASTER : INTEGER
    );
    PORT (
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      intr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      processor_clk : IN STD_LOGIC;
      processor_rst : IN STD_LOGIC;
      irq : OUT STD_LOGIC;
      processor_ack : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      interrupt_address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      irq_in : IN STD_LOGIC;
      interrupt_address_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      processor_ack_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT axi_intc;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_microblaze_0_axi_intc_0_arch: ARCHITECTURE IS "axi_intc,Vivado 2016.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_microblaze_0_axi_intc_0_arch : ARCHITECTURE IS "design_1_microblaze_0_axi_intc_0,axi_intc,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_microblaze_0_axi_intc_0_arch: ARCHITECTURE IS "design_1_microblaze_0_axi_intc_0,axi_intc,{x_ipProduct=Vivado 2016.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_intc,x_ipVersion=4.1,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_INSTANCE=axi_intc_inst,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_NUM_INTR_INPUTS=3,C_NUM_SW_INTR=0,C_KIND_OF_INTR=0xffffffff,C_KIND_OF_EDGE=0xffffffff,C_KIND_OF_LVL=0xffffffff,C_ASYNC_INTR=0xFFFFFFF8,C_NUM_SYNC_FF=2,C_IVAR_RESET_VALUE=0x00000010,C_ENABLE_ASYNC=0,C_HAS_IPR=1,C_" & 
"HAS_SIE=1,C_HAS_CIE=1,C_HAS_IVR=1,C_HAS_ILR=0,C_IRQ_IS_LEVEL=1,C_IRQ_ACTIVE=0x1,C_DISABLE_SYNCHRONIZERS=1,C_MB_CLK_NOT_CONNECTED=1,C_HAS_FAST=1,C_EN_CASCADE_MODE=0,C_CASCADE_MASTER=0}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_resetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF intr: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt_input INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF processor_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 proc_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF processor_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 proc_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF irq: SIGNAL IS "xilinx.com:interface:mbinterrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF processor_ack: SIGNAL IS "xilinx.com:interface:mbinterrupt:1.0 interrupt ACK";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt_address: SIGNAL IS "xilinx.com:interface:mbinterrupt:1.0 interrupt ADDRESS";
BEGIN
  U0 : axi_intc
    GENERIC MAP (
      C_FAMILY => "artix7",
      C_INSTANCE => "axi_intc_inst",
      C_S_AXI_ADDR_WIDTH => 9,
      C_S_AXI_DATA_WIDTH => 32,
      C_NUM_INTR_INPUTS => 3,
      C_NUM_SW_INTR => 0,
      C_KIND_OF_INTR => X"ffffffff",
      C_KIND_OF_EDGE => X"ffffffff",
      C_KIND_OF_LVL => X"ffffffff",
      C_ASYNC_INTR => X"FFFFFFF8",
      C_NUM_SYNC_FF => 2,
      C_IVAR_RESET_VALUE => X"00000010",
      C_ENABLE_ASYNC => 0,
      C_HAS_IPR => 1,
      C_HAS_SIE => 1,
      C_HAS_CIE => 1,
      C_HAS_IVR => 1,
      C_HAS_ILR => 0,
      C_IRQ_IS_LEVEL => 1,
      C_IRQ_ACTIVE => '1',
      C_DISABLE_SYNCHRONIZERS => 1,
      C_MB_CLK_NOT_CONNECTED => 1,
      C_HAS_FAST => 1,
      C_EN_CASCADE_MODE => 0,
      C_CASCADE_MASTER => 0
    )
    PORT MAP (
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      intr => intr,
      processor_clk => processor_clk,
      processor_rst => processor_rst,
      irq => irq,
      processor_ack => processor_ack,
      interrupt_address => interrupt_address,
      irq_in => '0',
      interrupt_address_in => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32))
    );
END design_1_microblaze_0_axi_intc_0_arch;
