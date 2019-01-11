library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity ARITHMATIC_LOGICAL_UNIT is
port(
INPUT_A : in std_logic_vector (7 downto 0);
CLOCK  : in std_logic ;
LOAD:    in std_logic ; 
CLEAR:      in std_logic;
OUTPUT:   out std_logic_vector (15 downto 0);
END_FLAG:    out std_logic
);
end ARITHMATIC_LOGICAL_UNIT;



architecture ARITHMATIC_LOCICAL_UNIT_ARCHITECTURE of ARITHMATIC_LOGICAL_UNIT is

component A_SQUARE_MINUS_1 
port
( input_a : in std_logic_vector (7 downto 0);
  clk : in std_logic;
  a_squared_minus_1 : out std_logic_vector (15 downto 0)
);
end component;
signal  output_results : std_logic_vector (15 downto 0);
begin

A_SQUARE_MINUS_1_U1 : A_SQUARE_MINUS_1 port map (INPUT_A,CLOCK,output_results(15 downto 0));

    process(CLOCK, CLEAR, LOAD)
    begin

        if CLEAR = '1' then 
        OUTPUT <= "0000000000000000";
	END_FLAG<='0';
        else
                
                     if LOAD'event and LOAD='0' then 
			OUTPUT<=output_results;                 
			END_FLAG <='1';
               
            end if;
        end if;
   end process;


end ARITHMATIC_LOCICAL_UNIT_ARCHITECTURE;
