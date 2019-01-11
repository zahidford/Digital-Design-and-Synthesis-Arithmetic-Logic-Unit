library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity A_SQUARE_MINUS_1 is
port

( input_a : in std_logic_vector (7 downto 0);
  clk : in std_logic;
  a_squared_minus_1 : out std_logic_vector (15 downto 0)
);
end A_SQUARE_MINUS_1;

architecture A_SQUARE_MINUS_1_ARCHITECTURE of A_SQUARE_MINUS_1 is 

component D_FLIP_FLOP
port(
D,clk : in  STD_LOGIC;

Q,QBAR : out STD_LOGIC);

end component;
 
component TWOS_COMPLIMENT
port
( input_a : in std_logic_vector (7 downto 0);
  clk : in std_logic;
  twos_complimented_bit : out std_logic_vector (7 downto 0)
);
end component;

signal twos_compliment_out : std_logic_vector (7 downto 0);

component PARTIAL_AND_OPERATION 
port
( input_a : in std_logic_vector (7 downto 0);
 partial_and : out std_logic_vector (36 downto 0)
);
end component;
signal partial_and_out : std_logic_vector (36 downto 0);

component A_SQUARE
port

( input_and: in std_logic_vector (36 downto 0);
 A_SQUARE_1 :out std_logic_vector (15 downto 0)
);
end component;
signal square_and_out : std_logic_vector (36 downto 0);
signal a_squared_minus_1_register : std_logic_vector (15 downto 0);
signal a_register_bar : std_logic_vector (15 downto 0);
component MINUS_ONE is
port(

  input_a : in std_logic_vector (15 downto 0);
  a_sq_1 : out std_logic_vector (15 downto 0)
);
end component;

begin

TWOS_COMPONENT_U1 : TWOS_COMPLIMENT port map (input_a(7 downto 0),clk,twos_compliment_out(7 downto 0));
PARTIAL_AND_OPERATION_U1 : PARTIAL_AND_OPERATION port map (twos_compliment_out(7 downto 0),partial_and_out(36 downto 0));
WALLACE_TREE_U1 : A_SQUARE port map (partial_and_out(36 downto 0),square_and_out(15 downto 0));
MINUS_ONE_U1 : MINUS_ONE port map (square_and_out(15 downto 0), a_squared_minus_1_register(15 downto 0));
--- load to refister
OUTPUT_REGISTER_U0 : D_FLIP_FLOP port map ( a_squared_minus_1_register(0),clk,a_squared_minus_1(0),a_register_bar(0));
OUTPUT_REGISTER_U1 : D_FLIP_FLOP port map ( a_squared_minus_1_register(1),clk,a_squared_minus_1(1),a_register_bar(1));
OUTPUT_REGISTER_U2 : D_FLIP_FLOP port map ( a_squared_minus_1_register(2),clk,a_squared_minus_1(2),a_register_bar(2));
OUTPUT_REGISTER_U3 : D_FLIP_FLOP port map ( a_squared_minus_1_register(3),clk,a_squared_minus_1(3),a_register_bar(3));
OUTPUT_REGISTER_U4 : D_FLIP_FLOP port map ( a_squared_minus_1_register(4),clk,a_squared_minus_1(4),a_register_bar(4));
OUTPUT_REGISTER_U5 : D_FLIP_FLOP port map ( a_squared_minus_1_register(5),clk,a_squared_minus_1(5),a_register_bar(5));
OUTPUT_REGISTER_U6 : D_FLIP_FLOP port map ( a_squared_minus_1_register(6),clk,a_squared_minus_1(6),a_register_bar(6));
OUTPUT_REGISTER_U7 : D_FLIP_FLOP port map ( a_squared_minus_1_register(7),clk,a_squared_minus_1(7),a_register_bar(7));
OUTPUT_REGISTER_U8 : D_FLIP_FLOP port map ( a_squared_minus_1_register(8),clk,a_squared_minus_1(8),a_register_bar(8));
OUTPUT_REGISTER_U9 : D_FLIP_FLOP port map ( a_squared_minus_1_register(9),clk,a_squared_minus_1(9),a_register_bar(9));
OUTPUT_REGISTER_U10 : D_FLIP_FLOP port map ( a_squared_minus_1_register(10),clk,a_squared_minus_1(10),a_register_bar(10));
OUTPUT_REGISTER_U11 : D_FLIP_FLOP port map ( a_squared_minus_1_register(11),clk,a_squared_minus_1(11),a_register_bar(11));
OUTPUT_REGISTER_U12 : D_FLIP_FLOP port map ( a_squared_minus_1_register(12),clk,a_squared_minus_1(12),a_register_bar(12));
OUTPUT_REGISTER_U13 : D_FLIP_FLOP port map ( a_squared_minus_1_register(13),clk,a_squared_minus_1(13),a_register_bar(13));
OUTPUT_REGISTER_U14 : D_FLIP_FLOP port map ( a_squared_minus_1_register(14),clk,a_squared_minus_1(14),a_register_bar(14));
OUTPUT_REGISTER_U15 : D_FLIP_FLOP port map ( a_squared_minus_1_register(15),clk,a_squared_minus_1(15),a_register_bar(15));




end A_SQUARE_MINUS_1_ARCHITECTURE;

