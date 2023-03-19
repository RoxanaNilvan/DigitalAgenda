----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:02:11 05/12/2022 
-- Design Name: 
-- Module Name:    comparator_alarma - comparator_alarma 
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

entity comparator_alarma is
    Port ( Min_zeci : in  STD_LOGIC_VECTOR (3 downto 0);
           Min_unit : in  STD_LOGIC_VECTOR (3 downto 0);
			  Al_min_zeci : in  STD_LOGIC_VECTOR (3 downto 0);
           Al_min_unit : in  STD_LOGIC_VECTOR (3 downto 0);
			  Ora_zeci : in  STD_LOGIC_VECTOR (3 downto 0);
           Ora_unit : in  STD_LOGIC_VECTOR (3 downto 0);
           Al_ora_zeci : in  STD_LOGIC_VECTOR (3 downto 0);
           Al_ora_unit : in  STD_LOGIC_VECTOR (3 downto 0);
			  Al_pornita : in STD_LOGIC;
           Alarma : out  STD_LOGIC);
end comparator_alarma;

architecture comparator_alarma of comparator_alarma is
component Comparator_4_biti is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           L : out  STD_LOGIC;
           E : out  STD_LOGIC;
           G : out  STD_LOGIC);
end component;

signal min_unit_l : STD_LOGIC;
signal min_unit_e : STD_LOGIC;
signal min_unit_g : STD_LOGIC;

signal min_zeci_l : STD_LOGIC;
signal min_zeci_e : STD_LOGIC;
signal min_zeci_g : STD_LOGIC;

signal ora_unit_l : STD_LOGIC;
signal ora_unit_e : STD_LOGIC;
signal ora_unit_g : STD_LOGIC;

signal ora_zeci_l : STD_LOGIC;
signal ora_zeci_e : STD_LOGIC;
signal ora_zeci_g : STD_LOGIC;
begin

Comp1: Comparator_4_biti port map( A => Min_unit,
											  B => Al_min_unit,
											  L => min_unit_l,
											  E => min_unit_e,
											  G => min_unit_g
);

Comp2: Comparator_4_biti port map( A => Min_zeci,
											  B => Al_min_zeci,
											  L => min_zeci_l,
											  E => min_zeci_e,
											  G => min_zeci_g
);

Comp3: Comparator_4_biti port map( A => Ora_unit,
											  B => Al_ora_unit,
											  L => ora_unit_l,
											  E => ora_unit_e,
											  G => ora_unit_g
);

Comp4: Comparator_4_biti port map( A => Ora_zeci,
											  B => Al_ora_zeci,
											  L => ora_zeci_l,
											  E => ora_zeci_e,
											  G => ora_zeci_g
);
	
	process(ora_zeci_e, ora_unit_e, min_zeci_e, min_unit_e)
	begin
		if( ora_zeci_e = '1' and ora_unit_e = '1' and min_zeci_e = '1' and min_unit_e = '1') then Alarma <= '1';
				else Alarma <= '0';
		end if;
	end process;
end comparator_alarma;

