Library ieee;
-- UNUSED LIBS
--use work.log_package.all;
--use work.bram_package.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity fsm is

port (
	clk	:	in std_logic;
	reset	:	in std_logic;
	req	:	in std_logic;
	addr	:	in std_logic_vector(31 downto 0);
	burst	:	in std_logic_vector(3 downto 0);
	din	:	in std_logic_vector(31 downto 0);
	dout	:	out std_logic_vector(31 downto 0);
	maddr	:	buffer std_logic_vector(31 downto 0);
	rdy	:	out std_logic
);
end fsm;

architecture rtl of fsm is
type state_type is (IDLE_st, REQ_st);
signal state_ir	:	state_type;
signal cnt_ir	:	std_logic_vector(3 downto 0);
-- NOT NEEDED FOR COMPONENT
--signal addr_i	:	std_logic_vector(31 downto 0);
--signal d_i	:	std_logic_vector(31 downto 0);
--signal maddr	:	std_logic_vector(31 downto 0);

begin
	
	moore_proc	:	process(clk, reset)
	begin
		if reset = '1' then
			--reset fsm
			state_ir <= IDLE_st;
			--drive outputs to zero
			maddr <= (others => '0');
			--reset internal counter
			cnt_ir <= (others => '0');
			
		elsif rising_edge(clk) then
			case state_ir is
			when IDLE_st =>
				if req = '1' then
					maddr <= addr;
					state_ir <= REQ_st;
					cnt_ir <= burst;
				end if;
			when REQ_st =>
				if (conv_integer(cnt_ir) /= 0) then
				--increment address
					maddr <= maddr + 1;
				--decrement burst counter
					cnt_ir <= cnt_ir - 1;
				--assert ready strobe
					rdy <= '1';

				else 
				-- refil donw, go to idle state
					state_ir <= IDLE_st;
					rdy <= '0';
				end if;
			-- else error, go to idle state
			when others =>
				state_ir <= IDLE_st;
			end case;
		end if;
	end process;
	
	pipe_reg_proc	:	process(clk, reset)
	begin
		if reset = '1' then
			dout <= (others => '0');
		elsif rising_edge(clk) then
			if (state_ir = REQ_st) then
				-- only pipe din when fsm in req_st
				dout <= din;
			end if;
		end if;
	end process;
end rtl;
			
		

