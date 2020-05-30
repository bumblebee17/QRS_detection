----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:11:58 05/28/2020 
-- Design Name: 
-- Module Name:    Adder_12 - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder_12 is
port(A,B:in std_logic_vector(11 downto 0); Cin:in std_logic; Sum:out std_logic_vector(11 downto 0); carry:out std_logic); 
end Adder_12;

architecture Behavioral of Adder_12 is
component Adder_8
port(A,B:in std_logic_vector(7 downto 0); Cin:in std_logic; Sum:out std_logic_vector(7 downto 0); carry:out std_logic); 
end component;
component Adder_4
port(A,B:in std_logic_vector(3 downto 0); Cin:in std_logic; Sum:out std_logic_vector(3 downto 0); carry:out std_logic); 
end component;
signal Cx: std_logic;
begin

	ADD1: Adder_8 port map(A(7 downto 0),B(7 downto 0),Cin,Sum(7 downto 0),Cx);
	ADD2: Adder_4 port map(A(11 downto 8),B(11 downto 8),Cx,Sum(11 downto 8),Carry);
end Behavioral;

