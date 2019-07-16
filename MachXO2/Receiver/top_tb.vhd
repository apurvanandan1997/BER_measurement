--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:12:39 07/07/2019
-- Design Name:   
-- Module Name:   /home/apurvan/GSoC/usb-plug-mod-working/data_transfer/8b10b_SERDES-Transceiver-master/MachXO2/Receiver/top_tb.vhd
-- Project Name:  test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_tb IS
END top_tb;
 
ARCHITECTURE behavior OF top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         LED : OUT  std_logic;
         LANE0 : IN  std_logic_vector(0 downto 0);
         CLK : IN  std_logic;
         FT601_CLK : IN  std_logic;
         --FT601_RST_N : OUT  std_logic;
         --FT601_DATA : INOUT  std_logic_vector(31 downto 0);
         --FT601_BE : OUT  std_logic_vector(3 downto 0);
         --FT601_RXF_N : IN  std_logic;
         --FT601_TXE_N : IN  std_logic;
         --FT601_WR_N : OUT  std_logic;
         --FT601_SIWU_N : OUT  std_logic;
         --FT601_RD_N : OUT  std_logic;
         --FT601_OE_N : OUT  std_logic;
         debug : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal LANE0 : std_logic_vector(0 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal debug : std_logic_vector(31 downto 0);
   signal FT601_CLK : std_logic := '0';
   signal FT601_RXF_N : std_logic := '0';
   signal FT601_TXE_N : std_logic := '0';

	--BiDirs
   signal FT601_DATA : std_logic_vector(31 downto 0);

 --	--Outputs
   signal LED : std_logic;
   signal FT601_RST_N : std_logic;
   signal FT601_BE : std_logic_vector(3 downto 0);
   signal FT601_WR_N : std_logic;
   signal FT601_SIWU_N : std_logic;
   signal FT601_RD_N : std_logic;
   signal FT601_OE_N : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 3.33333333333 ns;
   constant FT601_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          LED => LED,
          LANE0 => LANE0,
          CLK => CLK,
          FT601_CLK => FT601_CLK,
          --FT601_RST_N => FT601_RST_N,
          --FT601_DATA => FT601_DATA,
          --FT601_BE => FT601_BE,
          --FT601_RXF_N => FT601_RXF_N,
          --FT601_TXE_N => FT601_TXE_N,
          --FT601_WR_N => FT601_WR_N,
          --FT601_SIWU_N => FT601_SIWU_N,
          --FT601_RD_N => FT601_RD_N,
          --FT601_OE_N => FT601_OE_N,
          debug => debug
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '1';
		wait for CLK_period/2;
		CLK <= '0';
		wait for CLK_period/2;
   end process;

   FT601_CLK_process :process
   begin
    FT601_CLK <= '1';
    wait for FT601_CLK_period/2;
    FT601_CLK <= '0';
    wait for FT601_CLK_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      --LANE0_P <= "0";
      --LANE0_N <= "1";
      --wait for CLK_period/2;
      --LANE0_P <= "0";
      --LANE0_N <= "1";
      --wait for CLK_period/2;
      --LANE0_P <= "0";
      --LANE0_N <= "1";
      --wait for CLK_period/2;
      --LANE0_P <= "1";
      --LANE0_N <= "0";
      --wait for CLK_period/2;
      --LANE0_P <= "1";
      --LANE0_N <= "0";
      --wait for CLK_period/2;
      --LANE0_P <= "1";
      --LANE0_N <= "0";
      --wait for CLK_period/2;
      --LANE0_P <= "0";
      --LANE0_N <= "1";
      --wait for CLK_period/2;
      --LANE0_P <= "1";
      --LANE0_N <= "0";
      --wait for CLK_period/2;
      --LANE0_P <= "0";
      --LANE0_N <= "1";
      --wait for CLK_period/2;
      --LANE0_P <= "1";
      --LANE0_N <= "0";
      --wait for CLK_period/2;
      --0110111100
      if LED = '0' then
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;

        ----1001000011
        --LANE0 <= "1";

        --wait for CLK_period/2;
        --LANE0 <= "1";

        --wait for CLK_period/2;
        --LANE0 <= "0";

        --wait for CLK_period/2;
        --LANE0 <= "0";

        --wait for CLK_period/2;
        --LANE0 <= "0";

        --wait for CLK_period/2;
        --LANE0 <= "0";

        --wait for CLK_period/2;
        --LANE0 <= "1";

        --wait for CLK_period/2;
        --LANE0 <= "0";

        --wait for CLK_period/2;
        --LANE0 <= "0";

        --wait for CLK_period/2;
        --LANE0 <= "1";

        --wait for CLK_period/2;

      else
      -- D05.5 word = 10100101 = 165
      -- encoded = 0110100101 
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;

      -- D06.6 word = 11000110 = 198
      -- encoded = 0111000110 
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;

      --  -- D03.2 word = 01000011 
      ---- encoded = 1101000011
      --  LANE0 <= "1";

      --  wait for CLK_period/2;
      --  LANE0 <= "1";

      --  wait for CLK_period/2;
      --  LANE0 <= "0";

      --  wait for CLK_period/2;
      --  LANE0 <= "0";

      --  wait for CLK_period/2;
      --  LANE0 <= "0";

      --  wait for CLK_period/2;
      --  LANE0 <= "0";

      --  wait for CLK_period/2;
      --  LANE0 <= "1";

      --  wait for CLK_period/2;
      --  LANE0 <= "0";

      --  wait for CLK_period/2;
      --  LANE0 <= "1";

      --  wait for CLK_period/2;
      --  LANE0 <= "1";

      --  wait for CLK_period/2;

        
      --  -- D12.1 word = 00101100
      ---- encoded = 1100101100
      --  LANE0 <= "0";

      --  wait for CLK_period/2;
      --  LANE0 <= "0";

      --  wait for CLK_period/2;
      --  LANE0 <= "1";

      --  wait for CLK_period/2;
      --  LANE0 <= "1";

      --  wait for CLK_period/2;
      --  LANE0 <= "0";

      --  wait for CLK_period/2;
      --  LANE0 <= "1";

      --  wait for CLK_period/2;
      --  LANE0 <= "0";

      --  wait for CLK_period/2;
      --  LANE0 <= "0";

      --  wait for CLK_period/2;
      --  LANE0 <= "1";

      --  wait for CLK_period/2;
      --  LANE0 <= "1";

      --  wait for CLK_period/2;


        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        
        --D4.4 = 01000100
        --encoded = 0010100100
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "1";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
        LANE0 <= "0";

        wait for CLK_period/2;
      end if;

   end process;

END;
