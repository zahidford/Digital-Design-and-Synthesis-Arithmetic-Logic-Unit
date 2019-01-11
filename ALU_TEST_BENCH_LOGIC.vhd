LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.all;


ENTITY ALU_TEST_BENCH IS
END ALU_TEST_BENCH;
 
ARCHITECTURE behavior OF ALU_TEST_BENCH IS 
 
  
 
component ARITHMATIC_LOGICAL_UNIT 
port(
INPUT_A : in std_logic_vector (7 downto 0);
CLOCK  : in std_logic ;
LOAD:    in std_logic ; 
CLEAR:      in std_logic;
OUTPUT:   out std_logic_vector (15 downto 0);
END_FLAG:    out std_logic
);
end component;


   
  signal TB_number   : std_logic_vector (7 downto 0) := (others => '1');
  signal TB_output : std_logic_vector (15 downto 0)  := (others => '0');
  signal TB_clock   : std_logic := '0';
  signal TB_clear   : std_logic := '0';
   signal TB_load   : std_logic := '0';
 
  signal TB_flag : std_logic := '0';
  
  constant load_duration : time := 100 ns;
 
 signal i:integer;
BEGIN
 
 
   uut: ARITHMATIC_LOGICAL_UNIT PORT MAP (
          INPUT_A  => TB_number,
          CLOCK=> TB_clock,
          CLEAR => TB_clear,
          LOAD => TB_load,
          OUTPUT => TB_output,
	  END_FLAG =>TB_flag
        );

  

   process
   begin  
	


  for i in 0 to 255 loop 
 tb_load <= '1';
tb_clock <= '1';
wait for load_duration/2;
tb_clock <= '0';
tb_load <= '0';  
   	
 wait for load_duration/2;

TB_number <= TB_number - x"1";




 

  end loop;
  
  
   end process;

END;