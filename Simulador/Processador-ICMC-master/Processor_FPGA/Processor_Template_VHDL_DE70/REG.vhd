LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY REG IS
	PORT(
			CLK : IN STD_LOGIC;
			CLR : IN STD_LOGIC;
			LOAD : IN STD_LOGIC;
			I : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			O : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
END REG;

ARCHITECTURE main OF REG IS
BEGIN
	PROCESS(CLK, CLR)
	VARIABLE DATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
	BEGIN
		IF(CLR = '1') THEN
			DATA := x"0000";
			O <= x"0000";
		ELSIF(CLK'EVENT AND CLK = '1') THEN
			IF(LOAD = '1') THEN
				DATA := I;
			END IF;
		END IF;
		O <= DATA;
	END PROCESS;
END main;