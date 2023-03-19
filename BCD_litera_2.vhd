----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:13:35 05/31/2022 
-- Design Name: 
-- Module Name:    BCD_litera_2 - Behavioral 
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

entity BCD_litera_2 is
Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Lit : out  STD_LOGIC_VECTOR (6 downto 0));
end BCD_litera_2;

architecture Behavioral of BCD_litera_2 is

begin
	process(A)
	begin
		case A is
		when "0000" => Lit <= "1000001"; -- U
		when "0001" => Lit <= "0001000"; -- A
		when "0010" => Lit <= "1001111"; -- I
		when "0011" => Lit <= "1100010"; -- O
		when "0100" => Lit <= "1001111"; -- I
		when "0101" => Lit <= "0001000"; -- A
		when "0110" => Lit <= "1000001"; -- U
		when others => Lit <= "1111111"; -- toate segmentele sunt dezactivate
		end case;
	end process;
end Behavioral;

