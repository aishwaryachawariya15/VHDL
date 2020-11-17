

-- Library's
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

-- Entity Declaration
entity Shift_Reg is
         port(
              clk,data_in,reset: in std_logic;
              A,B,C,D: in std_logic);
end Shift_Reg;

-- Architecture Body
architecture behavior of Shift_Reg is

-- Internal signals used in Architecture
signal A_reg, B_reg	: std_logic := '0';
signal C_reg, D_reg	: std_logic := '0';

begin

	-- Signal Assignments
	A <= A_reg;
	B <= B_reg;
	C <= C_reg;
	D <= D_reg;		
	
	
	reg_process: process(clk,data_in,reset)  -- Process that is used to shift values, (We want this process to be evaluated on every clock cycle at the rising edge) 
	begin
	
               if(reset = '1' and clk = '1') then
                A <= '0';
                B <= '0';
                C <= '0';
		D <= '0'; 
		
                elsif(clk'event='1' and  clk='1') then
		A_reg<='data_in';
		B_reg<='A';
                C_reg<='B';
		D_reg<='C';
           end if;
	end process reg_process;
end behavior;
