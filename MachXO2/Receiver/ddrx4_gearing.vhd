library IEEE;
use IEEE.std_logic_1164.all;
library MACHXO2;
use MACHXO2.all;

entity DDRX4 is
    port (
        alignwd      : in  std_logic;
        clk          : in  std_logic;
        dqsdll_reset : in  std_logic;
        freeze       : in  std_logic;
        init         : in  std_logic;
        lock         : out std_logic;
        reset        : in  std_logic;
        rx_ready     : out std_logic;
        sclk         : out std_logic;
        uddcntln     : in  std_logic;
        datain       : in  std_logic_vector(0 downto 0);
        q            : out std_logic_vector(7 downto 0)
    );

end DDRX4;

architecture str of DDRX4 is

    -- internal signal declarations
    signal q7 : std_logic;
    signal q6 : std_logic;
    signal q5 : std_logic;
    signal q4 : std_logic;
    signal q3 : std_logic;
    signal q2 : std_logic;
    signal q1 : std_logic;
    signal q0 : std_logic;
    
    signal sclk_t       : std_logic;
    signal cdiv1        : std_logic;
    signal rx_reset     : std_logic;
    signal xstop        : std_logic;
    signal freeze_i     : std_logic;
    signal uddcntln_i   : std_logic;
    signal reset_inv    : std_logic;
    signal eclki        : std_logic;
    signal dqsdel       : std_logic;
    signal lock_chk     : std_logic;
    signal freeze_t     : std_logic;
    signal uddcntln_t   : std_logic;
    signal eclko        : std_logic;
    signal dataini_t0   : std_logic;
    signal buf_clk      : std_logic;
    signal buf_dataini0 : std_logic;
    signal clk_s        : std_logic_vector(1 downto 0) := "00";

    -- local component declarations
    component AND2
        port (
            A : in  std_logic;
            B : in  std_logic;
            Z : out std_logic
        );
    end component;

    component INV
        port (
            A : in  std_logic;
            Z : out std_logic
        );
    end component;

    component OR2
        port (
            A : in  std_logic;
            B : in  std_logic;
            Z : out std_logic
        );
    end component;

    component IB
        port (
            I : in  std_logic;
            O : out std_logic
        );
    end component;

    component IDDRX4B
        port (
            D       : in  std_logic;
            ECLK    : in  std_logic;
            SCLK    : in  std_logic;
            RST     : in  std_logic;
            ALIGNWD : in  std_logic;
            Q0      : out std_logic;
            Q1      : out std_logic;
            Q2      : out std_logic;
            Q3      : out std_logic;
            Q4      : out std_logic;
            Q5      : out std_logic;
            Q6      : out std_logic;
            Q7      : out std_logic
        );
    end component;

    component DQSDLLC
        generic (
            FORCE_MAX_DELAY  : in String;
            FIN              : in String;
            LOCK_SENSITIVITY : in String
        );
        port (
            CLK      : in  std_logic;
            RST      : in  std_logic;
            UDDCNTLN : in  std_logic;
            FREEZE   : in  std_logic;
            LOCK     : out std_logic;
            DQSDEL   : out std_logic
        );
    end component;

    component DELAYE
        generic (
            DEL_VALUE : in String;
            DEL_MODE  : in String
        );
        port (
            A : in  std_logic;
            Z : out std_logic
        );
    end component;

    component DLLDELC
        port (
            CLKI   : in  std_logic;
            DQSDEL : in  std_logic;
            CLKO   : out std_logic
        );
    end component;

    component CLKDIVC
        generic (
            DIV : in String
        );
        port (
            RST     : in  std_logic;
            CLKI    : in  std_logic;
            ALIGNWD : in  std_logic;
            CDIV1   : out std_logic;
            CDIVX   : out std_logic
        );
    end component;

    component ECLKSYNCA
        port (
            ECLKI : in  std_logic;
            STOP  : in  std_logic;
            ECLKO : out std_logic
        );
    end component;

    component ddrx4_rx_sync
        port (
            rstn     : in  std_logic;
            clk      : in  std_logic;
            init     : in  std_logic;
            lock     : in  std_logic;
            uddcntln : out std_logic;
            freeze   : out std_logic;
            rx_stop  : out std_logic;
            rx_reset : out std_logic;
            rx_start : out std_logic
        );
    end component;

    attribute IO_TYPE              : string;
    attribute IO_TYPE of Inst2_IB  : label is "LVDS25";
    attribute IO_TYPE of Inst1_IB0 : label is "LVDS25";
    attribute syn_keep             : boolean;
    attribute NGD_DRC_MASK         : integer;
    attribute NGD_DRC_MASK of str  : architecture is 1;

begin
    -- component instantiation statements
    INV_0 : INV
        port map (
            A => reset,
            Z => reset_inv
        );

    AND2_t1 : AND2
        port map (
            A => uddcntln,
            B => uddcntln_i,
            Z => uddcntln_t
        );

    OR2_t0 : OR2
        port map (
            A => freeze,
            B => freeze_i,
            Z => freeze_t
        );

    Inst8_IDDRX4B0 : IDDRX4B
        port map (
            D       => dataini_t0,
            ECLK    => eclko,
            SCLK    => sclk_t,
            RST     => reset,
            ALIGNWD => alignwd,
            Q0      => q0,
            Q1      => q1,
            Q2      => q2,
            Q3      => q3,
            Q4      => q4,
            Q5      => q5,
            Q6      => q6,
            Q7      => q7
        );

    Inst7_CLKDIVC : CLKDIVC
        generic map (
            DIV => "4.0"
        )
        port map (
            RST     => reset,
            CLKI    => eclko,
            ALIGNWD => alignwd,
            CDIV1   => cdiv1,
            CDIVX   => sclk_t
        );

    Inst6_ECLKSYNCA : ECLKSYNCA
        port map (
            ECLKI => eclki,
            STOP  => xstop,
            ECLKO => eclko
        );

    Inst5_rx_sync : ddrx4_rx_sync
        port map (
            rstn     => reset_inv,
            clk      => clk_s(1),
            init     => init,
            lock     => lock_chk,
            uddcntln => uddcntln_i,
            freeze   => freeze_i,
            rx_stop  => xstop,
            rx_reset => rx_reset,
            rx_start => rx_ready
        );

    Inst4_DLLDELC : DLLDELC
        port map (
            CLKI   => buf_clk,
            DQSDEL => dqsdel,
            CLKO   => eclki
        );

    Inst3_DQSDLLC : DQSDLLC
        generic map (FORCE_MAX_DELAY => "NO",
            FIN              => "300.0",
            LOCK_SENSITIVITY => "LOW"
        )
        port map (
            CLK      => eclko,
            RST      => dqsdll_reset,
            UDDCNTLN => uddcntln_t,
            FREEZE   => freeze_t,
            LOCK     => lock_chk,
            DQSDEL   => dqsdel
        );

    udel_dataini0 : DELAYE
        generic map (
            DEL_VALUE => "DELAY0",
            DEL_MODE  => "ECLK_ALIGNED"
        )
        port map (
            A => buf_dataini0,
            Z => dataini_t0
        );

    Inst2_IB : IB
        port map (
            I => clk,
            O => buf_clk
        );

    Inst1_IB0 : IB
        port map (
            I => datain(0),
            O => buf_dataini0
        );

    q(7) <= q7;
    q(6) <= q6;
    q(5) <= q5;
    q(4) <= q4;
    q(3) <= q3;
    q(2) <= q2;
    q(1) <= q1;
    q(0) <= q0;
    sclk <= sclk_t;
    lock <= lock_chk;

    clk_s(0) <= not clk_s(0) when rising_edge(buf_clk);
    clk_s(1) <= not clk_s(1) when rising_edge(clk_s(0));

end str;
