library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity PARTIAL_AND_OPERATION is
port

( input_a : in std_logic_vector (7 downto 0);
 partial_and : out std_logic_vector (36 downto 0)
);
end PARTIAL_AND_OPERATION;

architecture PARTIAL_AND_OPERATION_ARCHITECTURE of PARTIAL_AND_OPERATION is

component TWO_INPUT_AND_GATE
port
(
 a : in std_logic;
 b : in std_logic;
 c : out std_logic
);
end component;

begin 

product_u0 : TWO_INPUT_AND_GATE port map ( input_a(0),input_a(0),partial_and(0));
product_u1 : TWO_INPUT_AND_GATE port map ( '0','0',partial_and(1));
product_u2 : TWO_INPUT_AND_GATE port map ( input_a(1),input_a(0),partial_and(2));
product_u3 : TWO_INPUT_AND_GATE port map ( input_a(1),input_a(1),partial_and(3));
product_u4 : TWO_INPUT_AND_GATE port map ( input_a(2),input_a(0),partial_and(4));
product_u5 : TWO_INPUT_AND_GATE port map ( input_a(3),input_a(0),partial_and(5));
product_u6 : TWO_INPUT_AND_GATE port map ( input_a(2),input_a(1),partial_and(6));
product_u7 : TWO_INPUT_AND_GATE port map ( input_a(2),input_a(2),partial_and(7));
product_u8 : TWO_INPUT_AND_GATE port map ( input_a(4),input_a(0),partial_and(8));
product_u9 : TWO_INPUT_AND_GATE port map ( input_a(3),input_a(1),partial_and(9));
product_u10 : TWO_INPUT_AND_GATE port map ( input_a(5),input_a(0),partial_and(10));
product_u11 : TWO_INPUT_AND_GATE port map ( input_a(4),input_a(1),partial_and(11));
product_u12 : TWO_INPUT_AND_GATE port map ( input_a(3),input_a(2),partial_and(12));
product_u13 : TWO_INPUT_AND_GATE port map ( input_a(3),input_a(3),partial_and(13));
product_u14 : TWO_INPUT_AND_GATE port map ( input_a(6),input_a(0),partial_and(14));
product_u15 : TWO_INPUT_AND_GATE port map ( input_a(5),input_a(1),partial_and(15));
product_u16 : TWO_INPUT_AND_GATE port map ( input_a(4),input_a(2),partial_and(16));
product_u17 : TWO_INPUT_AND_GATE port map ( input_a(7),input_a(0),partial_and(17));
product_u18 : TWO_INPUT_AND_GATE port map ( input_a(6),input_a(1),partial_and(18));
product_u19 : TWO_INPUT_AND_GATE port map ( input_a(5),input_a(2),partial_and(19));
product_u20 : TWO_INPUT_AND_GATE port map ( input_a(4),input_a(3),partial_and(20));
product_u21 : TWO_INPUT_AND_GATE port map ( input_a(4),input_a(4),partial_and(21));
product_u22 : TWO_INPUT_AND_GATE port map ( input_a(7),input_a(1),partial_and(22));
product_u23 : TWO_INPUT_AND_GATE port map ( input_a(6),input_a(2),partial_and(23));
product_u24 : TWO_INPUT_AND_GATE port map ( input_a(5),input_a(3),partial_and(24));
product_u25 : TWO_INPUT_AND_GATE port map ( input_a(7),input_a(2),partial_and(25));
product_u26 : TWO_INPUT_AND_GATE port map ( input_a(6),input_a(3),partial_and(26));
product_u27 : TWO_INPUT_AND_GATE port map ( input_a(5),input_a(4),partial_and(27));
product_u28 : TWO_INPUT_AND_GATE port map ( input_a(5),input_a(5),partial_and(28));
product_u29 : TWO_INPUT_AND_GATE port map ( input_a(7),input_a(3),partial_and(29));
product_u30 : TWO_INPUT_AND_GATE port map ( input_a(6),input_a(4),partial_and(30));
product_u31 : TWO_INPUT_AND_GATE port map ( input_a(7),input_a(4),partial_and(31));
product_u32 : TWO_INPUT_AND_GATE port map ( input_a(6),input_a(5),partial_and(32));
product_u33 : TWO_INPUT_AND_GATE port map ( input_a(6),input_a(6),partial_and(33));
product_u34 : TWO_INPUT_AND_GATE port map ( input_a(7),input_a(5),partial_and(34));
product_u35 : TWO_INPUT_AND_GATE port map ( input_a(7),input_a(6),partial_and(35));
product_u36 : TWO_INPUT_AND_GATE port map ( input_a(7),input_a(7),partial_and(36));

end PARTIAL_AND_OPERATION_ARCHITECTURE;
