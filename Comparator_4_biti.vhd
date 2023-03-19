----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:04:32 05/30/2022 
-- Design Name: 
-- Module Name:    Comparator_4_biti - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comparator_4_biti is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           L : out  STD_LOGIC;
           E : out  STD_LOGIC;
           G : out  STD_LOGIC);
end Comparator_4_biti;

architecture Behavioral of Comparator_4_biti is

begin
	process(A, B)
	begin
	if(A < B) then L <= '1'; E <= '0'; G <= '0';
		elsif(A = B) then L <= '0'; E <= '1'; G <= '0';
			elsif(A > B) then L <= '0'; E <= '0'; G <= '1';
	end if;
	end process;
end Behavioral;

