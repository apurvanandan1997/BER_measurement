----------------------------------------------------------------------------
--  prng_cnt.vhd
--  Pseudo Random Generator cum Training Pattern Genrator
--  Version 1.0
--
--  Copyright (C) 2014 H.Poetzl
--
--  Modified by Apurva Nandan
--
--  This program is free software: you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation, either version
--  2 of the License, or (at your option) any later version.
----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity prng is
    generic(
        SEED : std_logic_vector(31 downto 0) := "10111100110011001111000001010011"
        -- K28.5 Control Symbol for Word Alignment ( MSB 8 bits)
    );
    port(
        clk   : in  std_logic;  -- Clock Input
        enb   : in  std_logic;  -- Enable data generation
        mode  : out  std_logic;  -- Mode select: '0 for PRNG, '1' for K28.5
        reset : in  std_logic;  -- Reset signal (To be Asserted for changing mode)
        rng   : out std_logic_vector (31 downto 0) -- Output Generated Data
    );
    
end prng;

architecture rtl of prng is

    signal fb : std_logic := '0';
    signal sr : std_logic_vector (31 downto 0) := SEED;
    signal hold_prng : std_logic_vector(28 downto 0) := (others => '0');
    signal mode_i : std_logic := '1';

begin

    ----------------------------------------------------------------------------
    --  rng_cnt_proc: LFSR Random Number Generator(Fibonacci) 
    --  With availabilty of 8-bit counter mode (32,22,2,1,0)
    ----------------------------------------------------------------------------
    lfsr_proc : process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                sr <= SEED;

            else
                if enb = '1' then
                    if mode_i = '1' then
                        sr <= sr;

                    elsif hold_prng = "11111111111111111111111111110" then
                        sr <= SEED;

                    else
                        --sr <= sr(30 downto 0) & fb;
                        --sr(31 downto 24) <= sr( 30 downto 24) & fb;
                        sr(31 downto 24) <= sr(31 downto 24) + '1';

                    end if;

                else
                    sr <= SEED;

                end if;
            end if;
        end if;
    end process;


    link_train_wait: process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                hold_prng <= (others => '0');
                mode_i <= '1';

            else
                if enb = '1' then
                        
                    if hold_prng = "11111111111111111111111111111" then
                        hold_prng <= hold_prng;

                    else 
                        hold_prng <= hold_prng + '1';

                    end if;

                    if hold_prng = "00000000000000000000000000000" then
                        mode_i <= '1';

                    elsif hold_prng = "01111111111111111111111111111" then
                        mode_i <= '0';

                    end if;
                else
                    hold_prng <= (others => '0');
                    mode_i <= '1';

                end if;
            end if;
        end if;
    end process;

    fb <= sr(31) xor sr(28) xor sr(25) xor sr(24);--sr(31) xor sr(21) xor sr(1) xor sr(0);
    rng <= sr  when hold_prng /= "11111111111111111111111111110" and hold_prng /= "11111111101111111111111111110" else (others => '0');
    mode <= mode_i;

end rtl;
