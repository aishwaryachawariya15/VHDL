

-- Library's used by this design
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity Hex_to_7_Seg is
port (
	seven_seg		: out std_logic_vector(6 downto 0);
	hex				: in std_logic_vector(3 downto 0));
end hex_to_7_seg;

-- Architecture Body
architecture behavior of Hex_to_7_Seg is
 
signal seg_out : std_logic_vector(6 downto 0);
begin  
	seven_seg <= not seg_out;

	seg_proc : process(hex)
	begin	
		case hex is
			when x"0" => seg_out <= "0111111";	-- 0
			when x"1" => seg_out <= "0000110";	-- 1
			when x"2" => seg_out <= "1011011";	-- 2
			when x"3" => seg_out <= "1001111";	-- 3
			when x"4" => seg_out <= "1100110";	-- 4
			when x"5" => seg_out <= "1101101";	-- 5
			when x"6" => seg_out <= "1111101";	-- 6
			when x"7" => seg_out <= "0000111";	-- 7
			when x"8" => seg_out <= "1111111";	-- 8
			when x"9" => seg_out <= "1100111";	-- 9
			when x"A" => seg_out <= "1110111";	-- A
			when x"B" => seg_out <= "1111111";	-- B
			when x"C" => seg_out <= "0111001";	-- C
			when x"D" => seg_out <= "0111111";	-- D
			when x"E" => seg_out <= "1111001";	-- E
			when x"F" => seg_out <= "1110001";  -- F
			when others => 
				seg_out <= (others => 'X');
		end case;
	end process seg_proc;			
end behavior;
