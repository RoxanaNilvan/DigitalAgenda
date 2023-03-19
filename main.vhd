----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:12:02 04/28/2022 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

entity main is
    Port ( AN_MII : in  STD_LOGIC_VECTOR (3 downto 0);
           AN_SUTE : in  STD_LOGIC_VECTOR (3 downto 0);
           AN_ZECI : in  STD_LOGIC_VECTOR (3 downto 0);
           AN_UNIT : in  STD_LOGIC_VECTOR (3 downto 0);
           LUNA : in  STD_LOGIC_VECTOR (3 downto 0);
           ZI_ZECI : in  STD_LOGIC_VECTOR (3 downto 0);
           ZI_UNIT : in  STD_LOGIC_VECTOR (3 downto 0);
           ZI_DIN_SAPTAMANA : in  STD_LOGIC_VECTOR (3 downto 0);
           ORA_ZECI : in  STD_LOGIC_VECTOR (3 downto 0);
           ORA_UNIT : in  STD_LOGIC_VECTOR (3 downto 0);
			  MIN_ZECI : in  STD_LOGIC_VECTOR (3 downto 0);
           MIN_UNIT : in  STD_LOGIC_VECTOR (3 downto 0);
			  AL_ON : in  STD_LOGIC;
			  AL_ORA_ZECI : in  STD_LOGIC_VECTOR (3 downto 0);
           AL_ORA_UNIT : in  STD_LOGIC_VECTOR (3 downto 0);
			  AL_MIN_ZECI : in  STD_LOGIC_VECTOR (3 downto 0);
           AL_MIN_UNIT : in  STD_LOGIC_VECTOR (3 downto 0);
			  LOAD : in STD_LOGIC;
			  CLOCK : in  STD_LOGIC;
			  RESET : in  STD_LOGIC;
			  ENABLE : in  STD_LOGIC;
			  
			  
			  MIN_UNIT_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  MIN_ZECI_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  ORA_UNIT_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  ORA_ZECI_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  ZI_UNIT_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  ZI_ZECI_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  LUNA_OUT : out STD_LOGIC_VECTOR (6 downto 0);
			  AN_UNIT_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  AN_ZECI_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  AN_SUTE_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  AN_MII_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
           ZI_LIT_1 : out  STD_LOGIC_VECTOR (6 downto 0);
			  ZI_LIT_2 : out  STD_LOGIC_VECTOR (6 downto 0);
           TEMP_OUT : out  STD_LOGIC_VECTOR (6 downto 0);
			  ALARMA : out STD_LOGIC);
end main;

architecture Behavioral of main is
component comparator_alarma is
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
end component;

component numarator0_1 is
Port ( Load : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (3 downto 0);
			  Final : out STD_LOGIC);
end component;

component numarator0_2 is
    Port ( Load : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  Verif_data :  in  STD_LOGIC_VECTOR (3 downto 0);
           Data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (3 downto 0);
			  Final : out STD_LOGIC);
end component;

component numarator0_3 is
Port ( Load : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (3 downto 0);
			  Final : out STD_LOGIC);
end component;

component numarator0_6 is
    Port ( Load : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (3 downto 0);
           Final : out  STD_LOGIC);
end component;

component numarator0_7 is
	Port ( Load : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (3 downto 0);
           Final : out  STD_LOGIC);
end component;

component numarator0_9 is
	Port ( Load : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (3 downto 0);
           Final : out  STD_LOGIC);
end component;

component numarator0_13 is
	Port ( Load : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (3 downto 0);
           Final : out  STD_LOGIC);
end component;

component generator_numere_random is
    Port ( Clk : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component BCD_7_Segmente is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           BCD : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component BCD_litera_1 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Lit : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component BCD_litera_2 is
Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Lit : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

signal Minute_unitati_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal Minute_zeci_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal Ora_unitati_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal Ora_zeci_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal Zi_unitati_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal Zi_zeci_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal Luna_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal An_unitati_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal An_zeci_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal An_sute_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal An_mii_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal Zi_din_saptamana_intermediar : STD_LOGIC_VECTOR (3 downto 0);
signal temperatura : STD_LOGIC_VECTOR (3 downto 0);

signal trigger_minute_zeci : STD_LOGIC;
signal trigger_ora_unitati : STD_LOGIC;
signal trigger_ora_zeci : STD_LOGIC;
signal trigger_crestere_zi : STD_LOGIC;
signal trigger_zi_zeci : STD_LOGIC;
signal trigger_luna : STD_LOGIC;
signal trigger_an_unitati : STD_LOGIC;
signal trigger_an_zeci : STD_LOGIC;
signal trigger_an_sute : STD_LOGIC;
signal trigger_an_mii : STD_LOGIC;
signal Stop : STD_LOGIC;

begin

	Unit1 : numarator0_9 port map( Load => Load,
										Reset => Reset,
										Enable => Enable,
										Clk => Clock,
										Data_in => Min_unit,
										Data_out => Minute_unitati_intermediar,
										Final => trigger_minute_zeci
	);

	Unit2 : numarator0_6 port map(Load => Load,
										Reset => Reset,
										Enable => trigger_minute_zeci,
										Clk => Clock,
										Data_in => Min_zeci,
										Data_out => Minute_zeci_intermediar,
										Final => trigger_ora_unitati
	);

	Unit3 : numarator0_9 port map(Load => Load,
										Reset => Reset,
										Enable => trigger_ora_unitati,
										Clk => Clock,
										Data_in => Ora_unit,
										Data_out => Ora_unitati_intermediar,
										Final => trigger_ora_zeci
	);
	Unit4 : numarator0_2 port map(Load => Load,
										Reset => Reset,
										Enable => trigger_ora_zeci,
										Clk => Clock,
										Verif_data => Ora_unitati_intermediar,
										Data_in => Ora_zeci,
										Data_out => Ora_zeci_intermediar,
										Final => trigger_crestere_zi
	);

	Unit5 : numarator0_9 port map(Load => Load,
										Reset => Reset,
										Enable => trigger_crestere_zi,
										Clk => Clock,
										Data_in => Zi_unit,
										Data_out => Zi_unitati_intermediar,
										Final => trigger_zi_zeci
	);

	Unit6 : numarator0_3 port map(Load => Load,
											Reset => Reset,
											Enable => trigger_zi_zeci,
											Clk => Clock,
											Data_in => Zi_zeci,
											Data_out => Zi_zeci_intermediar,
											Final => trigger_luna
	);

	Unit7 : numarator0_13 port map(Load => Load,
										Reset => Reset,
										Enable => trigger_luna,
										Clk => Clock,
										Data_in => Luna,
										Data_out => Luna_intermediar,
										Final => trigger_an_unitati
	);

	Unit8 : numarator0_9 port map(Load => Load,
										Reset => Reset,
										Enable => trigger_an_unitati,
										Clk => Clock,
										Data_in => An_unit,
										Data_out => An_unitati_intermediar,
										Final => trigger_an_zeci
	);

	Unit9 : numarator0_9 port map(Load => Load,
										Reset => Reset,
										Enable => trigger_an_zeci,
										Clk => Clock,
										Data_in => An_zeci,
										Data_out => An_zeci_intermediar,
										Final => trigger_an_sute
	);

	Unit10 : numarator0_9 port map(Load => Load,
										Reset => Reset,
										Enable => trigger_an_sute,
										Clk => Clock,
										Data_in => An_sute,
										Data_out => An_sute_intermediar,
										Final => trigger_an_mii
	);

	Unit11 : numarator0_9 port map(Load => Load,
										Reset => Reset,
										Enable => trigger_an_mii,
										Clk => Clock,
										Data_in => An_mii,
										Data_out => An_mii_intermediar,
										Final => Stop
	);
	
	Unit12 : numarator0_7 port map(Load => Load,
										Reset => Reset,
										Enable => Enable,
										Clk => Clock,
										Data_in => Zi_din_saptamana,
										Data_out => Zi_din_saptamana_intermediar,
										Final => Stop
	);
	
	Unit13 : comparator_alarma port map (Min_zeci => Minute_zeci_intermediar,
													 Min_unit => Minute_unitati_intermediar, 
													 Al_min_zeci => Al_min_zeci,
													 Al_min_unit => Al_min_unit,
													 Ora_zeci => Ora_zeci_intermediar,
													 Ora_unit => Ora_unitati_intermediar,
													 Al_ora_zeci => Al_ora_zeci,
													 Al_ora_unit => Al_ora_unit,
													 Al_pornita => Al_on,
													 Alarma => Alarma
	);
	
	Unit14: generator_numere_random port map(Clk => Clock,
														  Enable => Enable,
														  Reset => Reset,
														  y => temperatura
	);
	
	

	-- Afisearea pe 7 segmente
	Afisare1: BCD_7_Segmente port map( A => Minute_unitati_intermediar,
												  BCD => MIN_UNIT_OUT
	);
	Afisare2: BCD_7_Segmente port map( A => Minute_zeci_intermediar,
												  BCD => MIN_ZECI_OUT
	);
	Afisare3: BCD_7_Segmente port map( A => Ora_unitati_intermediar,
												  BCD => Ora_unit_out
	);
	Afisare4: BCD_7_Segmente port map( A => Ora_zeci_intermediar,
												  BCD => Ora_zeci_out
	);
	
	Afisare5: BCD_7_Segmente port map( A => Zi_unitati_intermediar,
												  BCD => Zi_unit_out
	);
	Afisare6: BCD_7_Segmente port map( A => Zi_zeci_intermediar,
												  BCD => Zi_zeci_out
	);
	Afisare7: BCD_7_Segmente port map( A => Luna_intermediar,
												  BCD => Luna_out
	);
	Afisare8: BCD_7_Segmente port map( A => An_unitati_intermediar,
												  BCD => An_unit_out
	);
	Afisare9: BCD_7_Segmente port map( A => An_zeci_intermediar,
												  BCD => An_zeci_out
	);
	Afisare10: BCD_7_Segmente port map( A => An_sute_intermediar,
												  BCD => An_sute_out
	);
	Afisare11: BCD_7_Segmente port map( A => An_mii_intermediar,
												  BCD => An_mii_out
	);
	Afisare12: BCD_7_Segmente port map( A => temperatura,
												  BCD => TEMP_OUT 
	);
	Afisare13: BCD_litera_1 port map( A => Zi_din_saptamana_intermediar,
												 Lit => ZI_LIT_1
	);
	Afisare14: BCD_litera_2 port map( A => Zi_din_saptamana_intermediar,
												 Lit => ZI_LIT_2
	);
end Behavioral;


