-------------------------------------------------------------------------------
--
-- FPGA Lady Bug
--
-- $Id: ladybug_sprite_ctrl_lu_prom.vhd,v 1.3 2005/11/07 21:55:50 arnim Exp $
--
-- Wrapper for technology dependent sprite control LUT PROM.
--
-- Instantiate 32 x 8 synchronous ROM.
--
-------------------------------------------------------------------------------
--
-- Copyright (c) 2005, Arnim Laeuger (arnim.laeuger@gmx.net)
--
-- All rights reserved
--
-- Redistribution and use in source and synthezised forms, with or without
-- modification, are permitted provided that the following conditions are met:
--
-- Redistributions of source code must retain the above copyright notice,
-- this list of conditions and the following disclaimer.
--
-- Redistributions in synthesized form must reproduce the above copyright
-- notice, this list of conditions and the following disclaimer in the
-- documentation and/or other materials provided with the distribution.
--
-- Neither the name of the author nor the names of other contributors may
-- be used to endorse or promote products derived from this software without
-- specific prior written permission.
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
-- THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
-- PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE
-- LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
-- CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
-- SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
-- INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
-- CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
-- ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
-- POSSIBILITY OF SUCH DAMAGE.
--
-- Please report bugs to the author, but before you do so, please
-- make sure that this is not a derivative work and that
-- you have the latest version of this file.
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ladybug_sprite_ctrl_lu_prom is

  port (
    clk_i : in  std_logic;
    a_i   : in  std_logic_vector(4 downto 0);
    d_o   : out std_logic_vector(7 downto 0)
  );

end ladybug_sprite_ctrl_lu_prom;


library altera_mf;
use altera_mf.altera_mf_components.altsyncram;

architecture cyclone of ladybug_sprite_ctrl_lu_prom is

  signal gnd_s : std_logic;
  signal d_s   : std_logic_vector(7 downto 0);

begin

  gnd_s <= '0';
  d_s   <= (others => '0');

  prom_b : altsyncram
    generic map (
      operation_mode => "SINGLE_PORT",
      width_a        => 8,
      widthad_a      => 5,
      outdata_reg_a  => "UNREGISTERED",
      init_file      => "10-3.hex"
    )
    port map (
      wren_a         => gnd_s,
      address_a      => a_i,
      clock0         => clk_i,
      data_a         => d_s,
      q_a            => d_o
    );

end cyclone;
