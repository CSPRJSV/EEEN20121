-- VHDL wrapper for Johnson Counter
-- NGC 'black box' component (jc.ngc)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity johnson is
    Port ( reset : in std_logic;
           clk : in std_logic;
		     q : out std_logic_vector (15 downto 0));
end johnson;

architecture black_box of johnson is

 attribute box_type : string;
 
 COMPONENT jc
    Port ( reset : in std_logic;
           clk : in std_logic;
		     q : out std_logic_vector (15 downto 0));
 END COMPONENT;
 attribute box_type of jc :component is "black_box";
	 
begin

ip_core: jc PORT MAP (
          clk => clk,
          reset => reset,
          q => q
        );

end black_box;

