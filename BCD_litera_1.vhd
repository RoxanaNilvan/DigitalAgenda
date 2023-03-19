----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:55:51 05/31/2022 
-- Design Name: 
-- Module Name:    BCD_litera_1 - Behavioral 
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

entity BCD_litera_1 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Lit : out  STD_LOGIC_VECTOR (6 downto 0));
end BCD_litera_1;

architecture Behavioral of BCD_litera_1 is

begin
	process(A)
	begin
		case A is
		when "0000" => Lit <= "1110001"; -- L
		when "0001" => Lit <= "0101011"; -- M
		when "0010" => Lit <= "0101011"; -- M
		when "0011" => Lit <= "1000011"; -- J
		when "0100" => Lit <= "1100011"; -- V
		when "0101" => Lit <= "0100100"; -- S
		when "0110" => Lit <= "1000010"; -- D
		when others => Lit <= "1111111"; -- toate segmentele sunt dezactivate
		end case;
	end process;
end Behavioral;

