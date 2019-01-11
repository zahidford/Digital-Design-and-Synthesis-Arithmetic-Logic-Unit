library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity FULL_ADDER is
port
(
in_a, in_b, in_c : in std_logic;
carry, sum : out std_logic
);
end FULL_ADDER;

architecture FULL_ADDER_ARCHITECTURE of FULL_ADDER is

signal sum_xor1, carry_and1, carry_and2 : std_logic;

component TWO_INPUT_XOR_GATE
port
(
a, b : in std_logic;
c : out std_logic
);
end component;
-- Declaration of OR2 gate
component TWO_INPUT_OR_GATE
port
(
a, b : in std_logic;
c : out std_logic
);
end component;
component TWO_INPUT_AND_GATE
port
(
a, b : in std_logic;
c : out std_logic
);
end component;
begin

SUMMATION_U1: TWO_INPUT_XOR_GATE port map(in_a, in_b, sum_xor1);
SUMMATION_U2: TWO_INPUT_XOR_GATE port map(sum_xor1, in_c, sum);
CARRY_U3: TWO_INPUT_AND_GATE port map (in_a, in_b, carry_and1);
CARRY_U4: TWO_INPUT_AND_GATE port map (sum_xor1, in_c, carry_and2);
CARRY_U5: TWO_INPUT_OR_GATE port map (carry_and1, carry_and2, carry);
end FULL_ADDER_ARCHITECTURE;
