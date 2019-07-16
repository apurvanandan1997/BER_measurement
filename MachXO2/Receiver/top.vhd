----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Create Date:    00:22:57 08/05/2019 
-- Design Name: 
-- Module Name:    ft601_top
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    FT601 Controller in FT245 mode
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top is
    port (
        LED : out std_logic;

        LANE0  : in std_logic_vector(0 downto 0);
        --LANE0_N  : in std_logic_vector(0 downto 0);
        CLK : in std_logic;
        --CLK_N : in std_logic;
        --LVDS_2_P : in std_logic;
        --LVDS_2_N : in std_logic;
        --LVDS_3_P : in std_logic;
        --LVDS_3_N : in std_logic;
        --LVDS_4_P : in std_logic;
        --LVDS_4_N : in std_logic;
        --LVDS_5_P : in std_logic;
        --LVDS_5_N : in std_logic;
        
        FT601_CLK    : in  std_logic;
        FT601_RST_N  : out  std_logic;
        FT601_DATA   : inout std_logic_vector(31 downto 0);
        FT601_BE     : out std_logic_vector(3 downto 0);
        FT601_RXF_N  : in  std_logic;
        FT601_TXE_N  : in  std_logic;
        FT601_WR_N   : out std_logic;
        FT601_SIWU_N : out std_logic;
        FT601_RD_N   : out std_logic;
        FT601_OE_N   : out std_logic
        --debug : out std_logic_vector(31 downto 0)

    );
    
end entity top;

architecture rtl_top of top is

    component ft601 is
        port (
            clk : in  std_logic;
            rst : in  std_logic;
            led : out std_logic;

            -- To FT601 chip
            ft601_data   : inout std_logic_vector(31 downto 0);
            ft601_be     : out std_logic_vector(3 downto 0);
            ft601_rxf_n  : in  std_logic;
            ft601_txe_n  : in  std_logic;
            ft601_wr_n   : out std_logic;
            ft601_siwu_n : out std_logic;
            ft601_rd_n   : out std_logic;
            ft601_oe_n   : out std_logic;

            -- From Internal FIFOs
            data_in     : in  std_logic_vector(31 downto 0);
            req_data    : out std_logic;
            fifo_in_emp : in  std_logic;
            data_wr_en  : in  std_logic
        );
    end component ft601;

    component ilvds is
    	port (
    		a : in std_logic;
    		an : in std_logic;
    		z : out std_logic
    	);
    end component ilvds;

    signal rst       : std_logic;
    signal req_data  : std_logic;
    signal gen_data  : std_logic_vector(31 downto 0);
    signal zynq_data : std_logic_vector(5 downto 0);
    signal eclk    : std_logic;
    signal sclk    : std_logic;
    signal par_byte   : std_logic_vector (7 downto 0);
    signal data_rdy : std_logic;
    signal rng       : std_logic_vector (31 downto 0);
    signal sdata     : std_logic_vector(0 downto 0);
    signal ce : std_logic;
    signal mode : std_logic;
    signal link_rdy : std_logic;
    signal ber : std_logic_vector(31 downto 0);
    signal test_counter : std_logic_vector(5 downto 0);
    --signal ft_clk_div2 : std_logic := '0';
    
begin

    FT601_RST_N <= '1';
    --LED <= debug;
    --ft_clk_div2 <= not ft_clk_div2 when falling_edge(FT601_CLK);
    rst <= '0';
    gen_data <= (par_byte - rng(31 downto 24)) when rising_edge(data_rdy); --when ft_clk_div2 = '0' else ber(63 downto 32);
    --debug <= gen_data;

    process (data_rdy)
    begin
        if falling_edge(data_rdy) then
            if par_byte /= "00000000" then
                ce <= link_rdy and not mode;

            else
                ce <= '0';

            end if;
        end if;
    end process;
        
    ft601_comp : ft601 port map (
        clk => FT601_CLK,
        rst => rst,
        --led => LED,
        ft601_data   => FT601_DATA,
        ft601_be     => FT601_BE,
        ft601_rxf_n  => FT601_RXF_N,
        ft601_txe_n  => FT601_TXE_N,
        ft601_wr_n   => FT601_WR_N,
        ft601_siwu_n => FT601_SIWU_N,
        ft601_rd_n   => FT601_RD_N,
        ft601_oe_n   => FT601_OE_N,
        data_in      => gen_data,
        req_data     => req_data,
        fifo_in_emp  => '0',
        data_wr_en   => '1'
    );
    
    decoder_inst : entity work.deserializer8_1
    port map (
        ser_data  => LANE0,
        eclk => CLK,
        sclk    => sclk,
        reset    => rst,
        data_rdy => data_rdy,
        par_data => par_byte,
        link_rdy => link_rdy,
        mode => mode
    );


    prng_isnt : entity work.prng
        generic map (
            SEED => "10111100110011001111000001010011"--"11100110011001111000001010011101"
        )
        port map (
            clk   => data_rdy,
            ce    => ce,
            reset => rst,
            rng   => rng
        );

    ber_proc : entity work.calc_ber
        port map (
            byte_recvd  => par_byte,
            din_clk     => data_rdy,
            byte_actual => rng(31 downto 24),
            ce          => ce,
            reset       => rst,
            ber         => ber,
            debug   => LED
        );
        
    debug_test : process(data_rdy)
    begin
        if falling_edge(data_rdy) then
                test_counter <= test_counter + '1';
        end if;
    end process;
    ----ilvds_0 : ilvds
    --port map (
    --	a => LANE0_P,
    --	an => LANE0_N,
    --	z => sdata(0)
    --);

    --ilvds_1 : ilvds
    --port map (
    --	a => CLK_P,
    --	an => CLK_N,
    --	z => eclk
    --);

    --ilvds_2 : ilvds
    --port map (
    --	a => LVDS_2_P,
    --	an => LVDS_2_N,
    --	z => zynq_data(2)
    --);

    --ilvds_3 : ilvds
    --port map (
    --	a => LVDS_3_P,
    --	an => LVDS_3_N,
    --	z => zynq_data(3)
    --);

    --ilvds_4 : ilvds
    --port map (
    --	a => LVDS_4_P,
    --	an => LVDS_4_N,
    --	z => zynq_data(4)
    --);

    --ilvds_5 : ilvds
    --port map (
    --	a => LVDS_5_P,
    --	an => LVDS_5_N,
    --	z => zynq_data(5)
    --);

end architecture rtl_top;