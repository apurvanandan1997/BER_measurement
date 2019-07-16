library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

LIBRARY machxo2;
USE machxo2.all;

entity deserializer8_1 is
    port (
        ser_data : in  std_logic_vector(0 downto 0);
        eclk     : in  std_logic;
        reset    : in  std_logic;
        sclk     : out std_logic;
        par_data : out std_logic_vector (7 downto 0);
        debug    : out std_logic_vector(9 downto 0);
        data_rdy : out std_logic;
        link_rdy : out std_logic;
        mode     : out std_logic
    );
end deserializer8_1;

architecture rtl of deserializer8_1 is

    component DDRX4 is
        port (
            clk          : in  std_logic;
            alignwd      : in  std_logic;
            dqsdll_reset : in  std_logic;
            freeze       : in  std_logic;
            init         : in  std_logic;
            reset        : in  std_logic;
            uddcntln     : in  std_logic;
            datain       : in  std_logic_vector(0 downto 0);
            lock         : out std_logic;
            rx_ready     : out std_logic;
            sclk         : out std_logic;
            q            : out std_logic_vector(7 downto 0)
        );
    end component DDRX4;

    signal clk         : std_logic;
    signal reg40       : std_logic_vector (39 downto 0) := (others => '0');
    signal pdata2mux   : std_logic_vector (7 downto 0)  := (others => '0');
    signal mux2reg40   : std_logic_vector (7 downto 0)  := (others => '0');
    signal decoder_in  : std_logic_vector (9 downto 0)  := (others => '0');
    signal decoder_out : std_logic_vector (7 downto 0)  := (others => '0');
    signal temp_reg    : std_logic_vector (9 downto 0)  := (others => '0');
    signal locked      : std_logic;
    signal init        : std_logic := '0';
    signal data_rdy_i  : std_logic := '0';
    signal sclk_buf    : std_logic;
    signal rx_ready    : std_logic;
    signal alignwd     : std_logic := '0';
    signal lnk_trnd    : std_logic := '0';
    signal control_ind : std_logic;
    signal lnk_trnd_buf: std_logic_vector(6 downto 0):= "0000000";

begin

    sclk <= sclk_buf;
    lnk_trnd <= lnk_trnd_buf(0) and lnk_trnd_buf(1) and lnk_trnd_buf(2) and lnk_trnd_buf(3);
    link_rdy <= lnk_trnd;

    data_rdy <= not sclk_buf and data_rdy_i;

    deserializer_inst : DDRX4
        port map (
            clk          => eclk,
            alignwd      => alignwd,
            dqsdll_reset => reset,
            freeze       => '0',
            init         => locked,
            reset        => reset,
            uddcntln     => '1',
            datain       => ser_data,
            lock         => locked,
            rx_ready     => rx_ready,
            sclk         => sclk_buf,
            q            => pdata2mux
        );

    decoder_inst : entity work.dec_8b10b
        port map (
            RESET    => reset,
            RBYTECLK => sclk_buf,
            AI       => decoder_in(0),
            BI       => decoder_in(1),
            CI       => decoder_in(2),
            DI       => decoder_in(3),
            EI       => decoder_in(4),
            FI       => decoder_in(5),
            GI       => decoder_in(6),
            HI       => decoder_in(7),
            II       => decoder_in(8),
            JI       => decoder_in(9),
            KO       => control_ind,
            HO       => decoder_out(7),
            GO       => decoder_out(6),
            FO       => decoder_out(5),
            EO       => decoder_out(4),
            DO       => decoder_out(3),
            CO       => decoder_out(2),
            BO       => decoder_out(1),
            AO       => decoder_out(0)
        );

    decode_proc : process(sclk_buf)
        variable temp : integer range 0 to 4 := 4;
    begin
        if sclk_buf'event and sclk_buf = '0' then
            if reset = '1' then
                temp := 4;
                lnk_trnd_buf <= "0000000";
                mode <= '1';
                par_data <= (others => '0');

            else
                if rx_ready = '1' then 
                    if temp = 4 then
                        temp := 0;

                    else
                        temp := temp + 1;

                    end if;

                    case temp is
                        when 0 =>
                            reg40 (7 downto 0) <= pdata2mux;
                            decoder_in <= temp_reg;
                            par_data <= decoder_out;
                            mode <= control_ind;

                        when 1 =>
                            reg40 (15 downto 8) <= pdata2mux;
                            decoder_in <= reg40 (9 downto 0);
                            par_data <= decoder_out;
                            mode <= control_ind;

                        when 2 =>
                            reg40 (23 downto 16) <= pdata2mux;
                            decoder_in <= reg40 (19 downto 10);
                            if lnk_trnd = '0' then

                                if (reg40(9 downto 0) /= "0110111100" and reg40(9 downto 0) /= "1001000011") then
                                    alignwd <= '1';
                                    lnk_trnd_buf(0) <= '0';
                                else
                                    lnk_trnd_buf(0) <= '1';

                                end if;
                                lnk_trnd_buf(3 downto 1) <= lnk_trnd_buf(2 downto 0);

                            else
                                lnk_trnd_buf(4) <= '1';
                                lnk_trnd_buf(6 downto 5) <= lnk_trnd_buf(5 downto 4);
                            end if;
                        when 3 =>
                            reg40 (31 downto 24) <= pdata2mux;
                            decoder_in <= reg40 (29 downto 20); 
                            par_data <= decoder_out;
                            mode <= control_ind;

                        when 4 =>
                            reg40 (39 downto 32) <= pdata2mux;
                            decoder_in <= reg40 (39 downto 30);
                            par_data <= decoder_out;
                            mode <= control_ind;
                            alignwd <= '0';

                    end case;

                else 
                    temp := 4;
                    lnk_trnd_buf <= "0000000";
                    mode <= '1';
                    par_data <= (others => '0');

                end if;
            end if;
        end if;

        if rising_edge(sclk_buf) then
            if reset = '1' then
                data_rdy_i <= '0';

            else
                if rx_ready = '1' then
                    if temp /= 1 and lnk_trnd_buf(6) = '1' then
                        data_rdy_i <= '1';

                    else 
                        data_rdy_i <= '0';

                    end if;
                else
                    data_rdy_i <= '0';
                    
                end if;
            end if;                    
        end if;
    end process;

    debug <= decoder_in;
end rtl;
