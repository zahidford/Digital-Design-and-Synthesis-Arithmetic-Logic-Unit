library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity A_SQUARE is
port

( input_and: in std_logic_vector (36 downto 0);
 A_SQUARE_1 :out std_logic_vector (15 downto 0)
);
end A_SQUARE;

architecture A_SQUARE_ARCHITECTURE of A_SQUARE is


signal  carry_and : std_logic_vector (27 downto 0);
signal  adder_out : std_logic_vector (30 downto 0);

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



begin

LINE_0_U1 : A_SQUARE_1(0)<= input_and(0);

LINE_1_U1 : A_SQUARE_1(1)<= input_and(1);

LINE_2_U1 : HALF_ADDER port map (input_and(2),input_and(3),carry_and(0),A_SQUARE_1(2));

LINE_3_U1 : HALF_ADDER port map (carry_and(0),input_and(4),carry_and(1),A_SQUARE_1(3));

LINE_4_U1 : FULL_ADDER port map (input_and(5),input_and(6),input_and(7),carry_and(2),adder_out(0));
LINE_4_U2 : HALF_ADDER port map (adder_out(0),carry_and(1),carry_and(3),A_SQUARE_1(4));

LINE_5_U1 : FULL_ADDER port map (input_and(8),input_and(9),carry_and(2),carry_and(4),adder_out(1));
LINE_5_U2 : HALF_ADDER port map (adder_out(1),carry_and(3),carry_and(5),A_SQUARE_1(5));

LINE_6_U1 : FULL_ADDER port map (input_and(10),input_and(11),input_and(12),carry_and(6),adder_out(2));
LINE_6_U2 : FULL_ADDER port map (input_and(13),adder_out(2),carry_and(4),carry_and(7),adder_out(3));
LINE_6_U4 : HALF_ADDER port map (adder_out(3),carry_and(5),carry_and(8),A_SQUARE_1(6));

LINE_7_U1 : FULL_ADDER port map (input_and(14),input_and(15),input_and(16),carry_and(9),adder_out(4));
LINE_7_U2 : FULL_ADDER port map (adder_out(4),carry_and(6),carry_and(7),carry_and(10),adder_out(5));
LINE_7_U3 : HALF_ADDER port map (adder_out(5),carry_and(8),carry_and(11),A_SQUARE_1(7));

LINE_8_U1 : FULL_ADDER port map (input_and(17),input_and(18),input_and(19),carry_and(12),adder_out(6));
LINE_8_U2 : FULL_ADDER port map (input_and(20),carry_and(9),adder_out(6),carry_and(13),adder_out(7));
LINE_8_U3 : FULL_ADDER port map (adder_out(7),input_and(21),carry_and(10),carry_and(14),adder_out(8));
LINE_8_U4 : HALF_ADDER port map (adder_out(8),carry_and(11),carry_and(15),A_SQUARE_1(8));

LINE_9_U1 : FULL_ADDER port map (input_and(22),input_and(23),input_and(24),carry_and(16),adder_out(9));
LINE_9_U2 : FULL_ADDER port map (adder_out(9),carry_and(12),carry_and(13),carry_and(17),adder_out(10));
LINE_9_U3 : FULL_ADDER port map (adder_out(10),carry_and(14),carry_and(15),carry_and(18),A_SQUARE_1(9));


LINE_10_U1 : FULL_ADDER port map (input_and(25),input_and(26),input_and(27),carry_and(19),adder_out(11));
LINE_10_U2 : FULL_ADDER port map (adder_out(11),input_and(28),carry_and(16),carry_and(20),adder_out(12));
LINE_10_U3 : FULL_ADDER port map (adder_out(12),carry_and(17),carry_and(18),carry_and(21),A_SQUARE_1(10));

LINE_11_U1 : FULL_ADDER port map (input_and(29),input_and(30),carry_and(19),carry_and(22),adder_out(13));
LINE_11_U2 : FULL_ADDER port map (adder_out(13),carry_and(20),carry_and(21),carry_and(23),A_SQUARE_1(11));

LINE_12_U1 : FULL_ADDER port map (input_and(31),input_and(32),input_and(33),carry_and(24),adder_out(14));
LINE_12_U2 : FULL_ADDER port map (adder_out(14),carry_and(23),carry_and(22),carry_and(25),A_SQUARE_1(12));

LINE_13_U2 : FULL_ADDER port map (input_and(34),carry_and(24),carry_and(25),carry_and(26),A_SQUARE_1(13));

LINE_14_U1 : FULL_ADDER port map (input_and(35),input_and(36),carry_and(26),carry_and(27),A_SQUARE_1(14));

LINE_15_U1 : A_SQUARE_1(15)<=carry_and(27);


end A_SQUARE_ARCHITECTURE;