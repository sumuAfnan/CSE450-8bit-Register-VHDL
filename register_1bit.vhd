----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:40:22 10/03/2026 
-- Design Name: 
-- Module Name:    register_1bit - Structural 
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

entity register_1bit is
    Port (
        D   : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        Q   : out STD_LOGIC
    );
end register_1bit;


architecture Structural of register_1bit is

    component d_flip_flop
        Port (
            D   : in  STD_LOGIC;
            CLK : in  STD_LOGIC;
            Q   : out STD_LOGIC
        );
    end component;


begin

    DFF1: d_flip_flop
        port map (
            D   => D,
            CLK => CLK,
            Q   => Q
        );

end Structural;