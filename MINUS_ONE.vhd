library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity MINUS_ONE is
port(

  input_a : in std_logic_vector (15 downto 0);
  a_sq_1 : out std_logic_vector (15 downto 0)
);
end MINUS_ONE;

architecture MINUS_ONE_ARCHITECTURE of MINUS_ONE is 

component HALF_ADDER
port
(
in_a : in std_logic;
in_b : in std_logic;
carryout : out std_logic;
sum : out std_logic
);
end component;

component FULL_ADDER
port
(
in_a : in std_logic;
in_b : in std_logic;
in_c : in std_logic;
carry : out std_logic;
sum : out std_logic
);
end component;


signal carryout : std_logic_vector (15 downto 0);
begin

LINE0_U1 : HALF_ADDER port map (input_a(0),'1',carryout(0),a_sq_1(0));
LINE1_U1 : FULL_ADDER port map (input_a(1),'1',carryout(0),carryout(1),a_sq_1(1));
LINE2_U1 : FULL_ADDER port map (input_a(2),'1',carryout(1),carryout(2),a_sq_1(2));
LINE3_U1 : FULL_ADDER port map (input_a(3),'1',carryout(2),carryout(3),a_sq_1(3));
LINE4_U1 : FULL_ADDER port map (input_a(4),'1',carryout(3),carryout(4),a_sq_1(4));
LINE5_U1 : FULL_ADDER port map (input_a(5),'1',carryout(4),carryout(5),a_sq_1(5));
LINE6_U1 : FULL_ADDER port map (input_a(6),'1',carryout(5),carryout(6),a_sq_1(6));
LINE7_U1 : FULL_ADDER port map (input_a(7),'1',carryout(6),carryout(7),a_sq_1(7));
LINE8_U1 : FULL_ADDER port map (input_a(8),'1',carryout(7),carryout(8),a_sq_1(8));
LINE9_U1 : FULL_ADDER port map (input_a(9),'1',carryout(8),carryout(9),a_sq_1(9));
LINE10_U1 : FULL_ADDER port map (input_a(10),'1',carryout(9),carryout(10),a_sq_1(10));
LINE11_U1 : FULL_ADDER port map (input_a(11),'1',carryout(10),carryout(11),a_sq_1(11));
LINE12_U1 : FULL_ADDER port map (input_a(12),'1',carryout(11),carryout(12),a_sq_1(12));
LINE13_U1 : FULL_ADDER port map (input_a(13),'1',carryout(12),carryout(13),a_sq_1(13));
LINE14_U1 : FULL_ADDER port map (input_a(14),'1',carryout(13),carryout(14),a_sq_1(14));
LINE15_U1 : FULL_ADDER port map (input_a(15),'1',carryout(14),carryout(15),a_sq_1(15));
end MINUS_ONE_ARCHITECTURE;
