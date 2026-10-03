----------------------------------------------------------------------------------
-- Test Bench for 8-bit Register
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_8bit_tb is
end register_8bit_tb;

architecture Behavioral of register_8bit_tb is

    -- Component declaration
    component register_8bit
        Port (
            D   : in  STD_LOGIC_VECTOR (7 downto 0);
            CLK : in  STD_LOGIC;
            Q   : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    -- Signals
    signal D   : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal CLK : STD_LOGIC := '0';
    signal Q   : STD_LOGIC_VECTOR (7 downto 0);

begin

    -- Instantiate 8-bit Register
    UUT: register_8bit
        port map (
            D   => D,
            CLK => CLK,
            Q   => Q
        );

    -- Clock generation
    CLK <= not CLK after 10 ns;

    -- Test data
    process
    begin

        D <= "00000000";
        wait for 20 ns;

        D <= "10101010";
        wait for 20 ns;

        D <= "11110000";
        wait for 20 ns;

        D <= "01010101";
        wait for 20 ns;

        D <= "11111111";
        wait for 20 ns;

        D <= "00001111";
        wait for 20 ns;

        wait;

    end process;

end Behavioral;