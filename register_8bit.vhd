----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:03:36 10/03/2026 
-- Design Name: 
-- Module Name:    register_8bit - Structural
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_8bit is
    Port (
        D   : in  STD_LOGIC_VECTOR (7 downto 0);
        CLK : in  STD_LOGIC;
        Q   : out STD_LOGIC_VECTOR (7 downto 0)
    );
end register_8bit;

architecture Structural of register_8bit is

    component register_1bit
        Port (
            D   : in  STD_LOGIC;
            CLK : in  STD_LOGIC;
            Q   : out STD_LOGIC
        );
    end component;

begin

    R0: register_1bit
        port map (
            D   => D(0),
            CLK => CLK,
            Q   => Q(0)
        );

    R1: register_1bit
        port map (
            D   => D(1),
            CLK => CLK,
            Q   => Q(1)
        );

    R2: register_1bit
        port map (
            D   => D(2),
            CLK => CLK,
            Q   => Q(2)
        );

    R3: register_1bit
        port map (
            D   => D(3),
            CLK => CLK,
            Q   => Q(3)
        );

    R4: register_1bit
        port map (
            D   => D(4),
            CLK => CLK,
            Q   => Q(4)
        );

    R5: register_1bit
        port map (
            D   => D(5),
            CLK => CLK,
            Q   => Q(5)
        );

    R6: register_1bit
        port map (
            D   => D(6),
            CLK => CLK,
            Q   => Q(6)
        );

    R7: register_1bit
        port map (
            D   => D(7),
            CLK => CLK,
            Q   => Q(7)
        );

end Structural;