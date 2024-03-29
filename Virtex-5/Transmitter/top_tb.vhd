--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:52:26 06/24/2019
-- Design Name:   
-- Module Name:   /home/apurvan/tmp/temppp/test/top_tb.vhd
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
----------------------------------------------------------------------------
--  This program is free software: you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation, either version
--  3 of the License, or (at your option) any later version.
----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity top_tb is
end top_tb;

architecture behavior of top_tb is

    -- component declaration for the unit under test (uut)
    component top
    port(
        USER_CLK      : in  std_logic;
        RESET         : in  std_logic;
		  SWITCH        : in  std_logic;
        DATA_LANE_0_P : out std_logic;
        DATA_LANE_0_N : out std_logic;
        CLK_LANE_P    : out std_logic;
        CLK_LANE_N    : out std_logic;
        LED           : out std_logic;
        debug         : out std_logic_vector(31 downto 0)
    );
    end component;

    --Inputs
    signal USER_CLK : std_logic := '0';
    signal RESET    : std_logic := '1';

    --Outputs
    signal DATA_LANE_0_P : std_logic;
    signal DATA_LANE_0_N : std_logic;
    signal CLK_LANE_P    : std_logic;
    signal CLK_LANE_N    : std_logic;
    signal LED           : std_logic;

    -- Clock period definitions
    constant USER_CLK_period : time := 10 ns;

    signal debug : std_logic_vector(31 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut : top port map (
        USER_CLK      => USER_CLK,
        RESET         => RESET,
		  SWITCH        => '1',
        DATA_LANE_0_P => DATA_LANE_0_P,
        DATA_LANE_0_N => DATA_LANE_0_N,
        CLK_LANE_P    => CLK_LANE_P,
        CLK_LANE_N    => CLK_LANE_N,
        LED           => LED,
        debug => debug
    );

    -- Clock process definitions
    USER_CLK_process : process
    begin
        USER_CLK <= '0';
        wait for USER_CLK_period/2;
        USER_CLK <= '1';
        wait for USER_CLK_period/2;
    
    end process;

    -- Stimulus process
    stim_proc : process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;
        RESET <= '0';
        wait;
    
    end process;

end;
