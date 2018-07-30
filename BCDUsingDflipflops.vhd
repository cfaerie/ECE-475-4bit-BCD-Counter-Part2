----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:46 10/04/2016 
-- Design Name: 
-- Module Name:    BCDUsingDflipflops - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity BCDUsingDflipflops is

	port(count: in std_logic; Z0, Z1, Z2, Z3: out std_logic); 
End BCDUsingDflipflops;

Architecture BCDUsingDflipflops_str of BCDUsingDflipflops is	  
	  component fd is
				port (D, C: in std_logic; Q: out std_logic);
	  end component;
	  
	  component inv is
				port (I: in std_logic; O: out std_logic);
	  end component;
	  
	  signal Q0, Q1, Q2, Q3, Q3N, Q2N, Q1N, Q0N: std_logic; 
 
Begin

INV0: inv port map (Q0, Q0N);
INV1: inv port map (Q1, Q1N);
INV2: inv port map (Q2, Q2N);
INV3: inv port map (Q3, Q3N);


D0: fd port map (Q0N, count, Q0);
D1: fd port map (Q1N, Q0, Q1);
D2: fd port map (Q2N, Q1, Q2);
D3: fd port map (Q3N, Q2, Q3);

Z0<=Q0;
Z1<=Q1;
Z2<=Q2;
Z3<=Q3;

end BCDUsingDflipflops_str;



