library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;

entity TWO_INPUT_OR_GATE is
   port( A, B : in std_logic;
            C : out std_logic);
end TWO_INPUT_OR_GATE;


architecture TWO_INPUT_OR_GATE_ARCHITECTURE of TWO_INPUT_OR_GATE is 
begin
   C <= A or B;
end TWO_INPUT_OR_GATE_ARCHITECTURE;
