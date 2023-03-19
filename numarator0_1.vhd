----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:50:46 05/04/2022 
-- Design Name: 
-- Module Name:    numarator0_1 - numarator 
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity numarator0_1 is
Port ( Load : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (3 downto 0);
			  Final : out STD_LOGIC);
end numarator0_1;

architecture numarator of numarator0_1 is
	signal temp :STD_LOGIC_VECTOR (3 downto 0);
begin
	process ( Clk, Load, Reset, Enable)
	begin
		if ( Reset = '1') then
								temp <= "0000";
			elsif ( Load = '1') then
							temp <= Data_in;
			elsif ( Clk = '1' and clk'event ) then 
				if ( Enable = '1') then
							temp <= temp + 1;
					if ( temp = "0001") then 
									Final <= '1'; --Carry
									temp <= "0000";
					end if;
				end if;
		 end if;
	 end process;
	 Data_out <= temp;
end numarator;

