--------------------------------------------------------------------------------
--
-- This VHDL file was generated by EASE/HDL 7.4 Revision 4 from HDL Works B.V.
--
-- Ease library  : work
-- HDL library   : work
-- Host name     : S212065
-- User name     : df768
-- Time stamp    : Tue Aug 19 08:05:18 2014
--
-- Designed by   : L.Maarsen
-- Company       : LogiXA
-- Project info  : eSoC
--
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Object        : Entity work.esoc_port
-- Last modified : Mon Apr 14 12:48:46 2014.
--------------------------------------------------------------------------------



library ieee, std, work;
use ieee.std_logic_1164.all;
use std.textio.all;
use ieee.numeric_std.all;
use work.package_esoc_configuration.all;

entity esoc_port is
  generic(
    esoc_port_nr : integer := 0);
  port(
    clk_control         : in     std_logic;
    clk_data            : in     std_logic;
    clk_rgmii_125m      : in     STD_LOGIC;
    clk_rgmii_25m       : in     STD_LOGIC;
    clk_rgmii_2m5       : in     STD_LOGIC;
    clk_search          : in     std_logic;
    ctrl_address        : in     std_logic_vector(15 downto 0);
    ctrl_rd             : in     std_logic;
    ctrl_rddata         : out    std_logic_vector(31 downto 0);
    ctrl_wait           : out    std_logic;
    ctrl_wr             : in     std_logic;
    ctrl_wrdata         : in     std_logic_vector(31 downto 0);
    data                : inout  std_logic_vector(63 downto 0);
    data_eof            : inout  std_logic;
    data_gnt_rd         : in     std_logic;
    data_gnt_wr         : in     std_logic;
    data_port_sel       : inout  std_logic_vector(esoc_port_count-1 downto 0);
    data_req            : out    std_logic;
    data_sof            : inout  std_logic;
    mdc                 : out    std_logic;
    mdio                : inout  std_logic;
    reset               : in     std_logic;
    rgmii_rxc           : in     std_logic;
    rgmii_rxctl         : in     std_logic;
    rgmii_rxd           : in     std_logic_vector(3 downto 0);
    rgmii_txc           : out    std_logic;
    rgmii_txctl         : out    std_logic;
    rgmii_txd           : out    std_logic_vector(3 downto 0);
    search_eof          : out    std_logic;
    search_gnt_wr       : in     std_logic;
    search_key          : out    std_logic_vector(63 downto 0);
    search_port_stalled : out    std_logic;
    search_req          : out    std_logic;
    search_result       : in     std_logic_vector(esoc_port_count-1 downto 0);
    search_result_av    : in     std_logic;
    search_sof          : out    std_logic);
end entity esoc_port;

--------------------------------------------------------------------------------
-- Object        : Architecture work.esoc_port.esoc_port
-- Last modified : Mon Apr 14 12:48:46 2014.
--------------------------------------------------------------------------------

architecture esoc_port of esoc_port is

  signal Net_0                   : std_logic;
  signal Net_1                   : std_logic_vector(31 downto 0);
  signal Net_2                   : std_logic;
  signal Net_3                   : std_logic_vector(31 downto 0);
  signal Net_4                   : std_logic;
  signal Net_5                   : std_logic_vector(111 downto 0);
  signal Net_6                   : std_logic;
  signal Net_7                   : std_logic_vector(31 downto 0);
  signal Net_8                   : std_logic;
  signal Net_9                   : std_logic_vector(15 downto 0);
  signal Net_10                  : std_logic;
  signal Net_11                  : std_logic;
  signal inbound_data_read       : std_logic;
  signal Net_13                  : std_logic;
  signal Net_14                  : std_logic_vector(31 downto 0);
  signal Net_15                  : std_logic;
  signal Net_16                  : std_logic;
  signal Net_17                  : std_logic_vector(111 downto 0);
  signal Net_18                  : std_logic;
  signal Net_19                  : std_logic;
  signal search_port_stalled_net : std_logic;
  signal Net_22                  : std_logic;
  signal outbound_info           : std_logic_vector(15 downto 0);
  signal inbound_proc_data       : std_logic_vector(63 downto 0);
  signal outbound_data           : std_logic_vector(63 downto 0);
  signal inbound_proc_data_full  : std_logic;

  component esoc_port_interface
    generic(
      esoc_port_nr : integer := 0);
    port(
      clk_control          : in     std_logic;
      clk_rgmii_125m       : in     STD_LOGIC;
      clk_rgmii_25m        : in     STD_LOGIC;
      clk_rgmii_2m5        : in     STD_LOGIC;
      ctrl_address         : in     std_logic_vector(15 downto 0);
      ctrl_rd              : in     std_logic := '0';
      ctrl_rddata          : out    std_logic_vector(31 downto 0);
      ctrl_wait            : out    std_logic;
      ctrl_wr              : in     std_logic;
      ctrl_wrdata          : in     std_logic_vector(31 downto 0);
      inbound_data         : out    std_logic_vector(31 downto 0);
      inbound_data_full    : in     std_logic;
      inbound_data_write   : out    std_logic;
      inbound_header       : out    std_logic_vector(111 downto 0);
      inbound_header_write : out    std_logic;
      inbound_info         : out    std_logic_vector(31 downto 0);
      inbound_info_write   : out    std_logic;
      mac_mdc              : out    std_logic;
      mac_mdio             : inout  std_logic;
      outbound_data        : in     std_logic_vector(31 downto 0);
      outbound_data_read   : out    std_logic;
      outbound_info        : in     std_logic_vector(15 downto 0);
      outbound_info_empty  : in     std_logic;
      outbound_info_read   : out    std_logic;
      reset                : in     std_logic;
      rgmii_rxc            : in     std_logic;
      rgmii_rxctl          : in     std_logic;
      rgmii_rxd            : in     std_logic_vector(3 downto 0);
      rgmii_txc            : out    std_logic;
      rgmii_txctl          : out    std_logic;
      rgmii_txd            : out    std_logic_vector(3 downto 0));
  end component esoc_port_interface;

  component esoc_port_processor
    generic(
      esoc_port_nr : integer := 0);
    port(
      clk_control          : in     std_logic;
      clk_data             : in     std_logic;
      clk_search           : in     std_logic;
      ctrl_address         : in     std_logic_vector(15 downto 0);
      ctrl_rd              : in     std_logic;
      ctrl_rddata          : out    std_logic_vector(31 downto 0);
      ctrl_wait            : out    std_logic;
      ctrl_wr              : in     std_logic;
      ctrl_wrdata          : in     std_logic_vector(31 downto 0);
      data                 : inout  std_logic_vector(63 downto 0);
      data_eof             : inout  std_logic;
      data_gnt_rd          : in     std_logic;
      data_gnt_wr          : in     std_logic;
      data_port_sel        : inout  std_logic_vector(esoc_port_count-1 downto 0);
      data_req             : out    std_logic;
      data_sof             : inout  std_logic;
      inbound_data         : in     std_logic_vector(63 downto 0);
      inbound_data_full    : in     std_logic;
      inbound_data_read    : out    std_logic;
      inbound_header       : in     std_logic_vector(111 downto 0);
      inbound_header_empty : in     std_logic;
      inbound_header_read  : out    std_logic;
      inbound_info         : in     std_logic_vector(31 downto 0);
      inbound_info_empty   : in     std_logic;
      inbound_info_read    : out    std_logic;
      outbound_data        : out    std_logic_vector(63 downto 0);
      outbound_data_full   : in     std_logic;
      outbound_data_write  : out    std_logic;
      outbound_info        : out    std_logic_vector(15 downto 0);
      outbound_info_write  : out    std_logic;
      reset                : in     std_logic;
      search_eof           : out    std_logic;
      search_gnt_wr        : in     std_logic;
      search_key           : out    std_logic_vector(63 downto 0);
      search_req           : out    std_logic;
      search_result        : in     std_logic_vector(esoc_port_count-1 downto 0);
      search_result_av     : in     std_logic;
      search_sof           : out    std_logic);
  end component esoc_port_processor;

  component esoc_port_storage
    port(
      clk_control               : in     std_logic;
      clk_data                  : in     std_logic;
      clk_search                : in     std_logic;
      inbound_port_data         : in     std_logic_vector(31 downto 0);
      inbound_port_data_full    : out    std_logic;
      inbound_port_data_write   : in     std_logic;
      inbound_port_header       : in     std_logic_vector(111 downto 0);
      inbound_port_header_write : in     std_logic;
      inbound_port_info         : in     std_logic_vector(31 downto 0);
      inbound_port_info_write   : in     std_logic;
      inbound_proc_data         : out    std_logic_vector(63 downto 0);
      inbound_proc_data_full    : out    std_logic;
      inbound_proc_data_read    : in     std_logic;
      inbound_proc_header       : out    std_logic_vector(111 downto 0);
      inbound_proc_header_empty : out    std_logic;
      inbound_proc_header_read  : in     std_logic;
      inbound_proc_info         : out    std_logic_vector(31 downto 0);
      inbound_proc_info_empty   : out    std_logic;
      inbound_proc_info_read    : in     std_logic;
      outbound_port_data        : out    std_logic_vector(31 downto 0);
      outbound_port_data_read   : in     std_logic;
      outbound_port_info        : out    std_logic_vector(15 downto 0);
      outbound_port_info_empty  : out    std_logic;
      outbound_port_info_read   : in     std_logic;
      outbound_proc_data        : in     std_logic_vector(63 downto 0);
      outbound_proc_data_full   : out    std_logic;
      outbound_proc_data_write  : in     std_logic;
      outbound_proc_info        : in     std_logic_vector(15 downto 0);
      outbound_proc_info_write  : in     std_logic;
      reset                     : in     std_logic);
  end component esoc_port_storage;

begin
  --External PHY Interface
  --Search engine 
  --interface
  --Port to Port 
  --data interface
  search_port_stalled <= search_port_stalled_net;
  u0: esoc_port_interface
    generic map(
      esoc_port_nr => esoc_port_nr)
    port map(
      clk_control          => clk_control,
      clk_rgmii_125m       => clk_rgmii_125m,
      clk_rgmii_25m        => clk_rgmii_25m,
      clk_rgmii_2m5        => clk_rgmii_2m5,
      ctrl_address         => ctrl_address,
      ctrl_rd              => ctrl_rd,
      ctrl_rddata          => ctrl_rddata,
      ctrl_wait            => ctrl_wait,
      ctrl_wr              => ctrl_wr,
      ctrl_wrdata          => ctrl_wrdata,
      inbound_data         => Net_1,
      inbound_data_full    => Net_2,
      inbound_data_write   => Net_0,
      inbound_header       => Net_5,
      inbound_header_write => Net_6,
      inbound_info         => Net_3,
      inbound_info_write   => Net_4,
      mac_mdc              => mdc,
      mac_mdio             => mdio,
      outbound_data        => Net_7,
      outbound_data_read   => Net_8,
      outbound_info        => Net_9,
      outbound_info_empty  => Net_11,
      outbound_info_read   => Net_10,
      reset                => reset,
      rgmii_rxc            => rgmii_rxc,
      rgmii_rxctl          => rgmii_rxctl,
      rgmii_rxd            => rgmii_rxd,
      rgmii_txc            => rgmii_txc,
      rgmii_txctl          => rgmii_txctl,
      rgmii_txd            => rgmii_txd);

  u1: esoc_port_processor
    generic map(
      esoc_port_nr => esoc_port_nr)
    port map(
      clk_control          => clk_control,
      clk_data             => clk_data,
      clk_search           => clk_search,
      ctrl_address         => ctrl_address,
      ctrl_rd              => ctrl_rd,
      ctrl_rddata          => ctrl_rddata,
      ctrl_wait            => ctrl_wait,
      ctrl_wr              => ctrl_wr,
      ctrl_wrdata          => ctrl_wrdata,
      data                 => data,
      data_eof             => data_eof,
      data_gnt_rd          => data_gnt_rd,
      data_gnt_wr          => data_gnt_wr,
      data_port_sel        => data_port_sel,
      data_req             => data_req,
      data_sof             => data_sof,
      inbound_data         => inbound_proc_data,
      inbound_data_full    => inbound_proc_data_full,
      inbound_data_read    => inbound_data_read,
      inbound_header       => Net_17,
      inbound_header_empty => Net_18,
      inbound_header_read  => Net_16,
      inbound_info         => Net_14,
      inbound_info_empty   => Net_15,
      inbound_info_read    => Net_13,
      outbound_data        => outbound_data,
      outbound_data_full   => search_port_stalled_net,
      outbound_data_write  => Net_19,
      outbound_info        => outbound_info,
      outbound_info_write  => Net_22,
      reset                => reset,
      search_eof           => search_eof,
      search_gnt_wr        => search_gnt_wr,
      search_key           => search_key,
      search_req           => search_req,
      search_result        => search_result,
      search_result_av     => search_result_av,
      search_sof           => search_sof);

  u3: esoc_port_storage
    port map(
      clk_control               => clk_control,
      clk_data                  => clk_data,
      clk_search                => clk_search,
      inbound_port_data         => Net_1,
      inbound_port_data_full    => Net_2,
      inbound_port_data_write   => Net_0,
      inbound_port_header       => Net_5,
      inbound_port_header_write => Net_6,
      inbound_port_info         => Net_3,
      inbound_port_info_write   => Net_4,
      inbound_proc_data         => inbound_proc_data,
      inbound_proc_data_full    => inbound_proc_data_full,
      inbound_proc_data_read    => inbound_data_read,
      inbound_proc_header       => Net_17,
      inbound_proc_header_empty => Net_18,
      inbound_proc_header_read  => Net_16,
      inbound_proc_info         => Net_14,
      inbound_proc_info_empty   => Net_15,
      inbound_proc_info_read    => Net_13,
      outbound_port_data        => Net_7,
      outbound_port_data_read   => Net_8,
      outbound_port_info        => Net_9,
      outbound_port_info_empty  => Net_11,
      outbound_port_info_read   => Net_10,
      outbound_proc_data        => outbound_data,
      outbound_proc_data_full   => search_port_stalled_net,
      outbound_proc_data_write  => Net_19,
      outbound_proc_info        => outbound_info,
      outbound_proc_info_write  => Net_22,
      reset                     => reset);

end architecture esoc_port ; -- of esoc_port
