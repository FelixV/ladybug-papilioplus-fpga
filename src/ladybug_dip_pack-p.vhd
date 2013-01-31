-------------------------------------------------------------------------------
--
-- $Id: ladybug_dip_pack-p.vhd,v 1.4 2005/10/10 20:52:04 arnim Exp $
--
-- Copyright (c) 2005, Arnim Laeuger (arnim.laeuger@gmx.net)
--
-- All rights reserved
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package ladybug_dip_pack is

  -----------------------------------------------------------------------------
  -- DIP switch settings for Lady Bug
  -----------------------------------------------------------------------------
  constant lb_dip_block_1_c : std_logic_vector(7 downto 0) :=
    -- Lady Bugs per Game -----------------------------------------------------
    -- 0 = 5 Lady Bugs
    -- 1 = 3 Lady Bugs
    '0' &
    -- Free Play --------------------------------------------------------------
    -- 0 = Free Play
    -- 1 = No Free Play
    '1' &
    -- Cabinet ----------------------------------------------------------------
    -- 0 = Upright
    -- 1 = Cocktail
    '0' &
    -- Screen Freeze ----------------------------------------------------------
    -- 0 = Freeze
    -- 1 = No Freeze
    '1' &
    -- Rack Test --------------------------------------------------------------
    -- 0 = On
    -- 1 = Off
    '1' &
    -- High Score Initials ----------------------------------------------------
    -- 0 = 3-Letter Initials
    -- 1 = 10-Letter Initials
    '1' &
    -- Difficulty -------------------------------------------------------------
    -- 00 = Hardest
    -- 01 = Hard
    -- 10 = Medium
    -- 11 = Easy
    "11";

  constant lb_dip_block_2_c : std_logic_vector(7 downto 0) :=
    -- Pricing Options --------------------------------------------------------
    -- 1111 = 1 coin  1 credit
    -- 1110 = 1 coin  2 credits
    -- 1101 = 1 coin  3 credits
    -- 1100 = 1 coin  4 credits
    -- 1011 = 1 coin  5 credits
    -- 1010 = 2 coins 1 credit
    -- 1001 = 2 coins 3 credits
    -- 1000 = 3 coins 1 credit
    -- 0111 = 3 coins 2 credit
    -- 0110 = 4 coins 1 credit
    -- 0101 = 1 coin  1 credit
    -- 0100 = 1 coin  1 credit
    -- 0011 = 1 coin  1 credit
    -- 0010 = 1 coin  1 credit
    -- 0001 = 1 coin  1 credit
    -- 0000 = 1 coin  1 credit
    --
    -- Left Chute
    '1' & "111" &
    -- Right Chute
    '1' & "111";


  -----------------------------------------------------------------------------
  -- DIP switch settings for Cosmic Avenger
  -----------------------------------------------------------------------------
  constant ca_dip_block_1_c : std_logic_vector(7 downto 0) :=
    -- Lives per Game ---------------------------------------------------------
    -- 00 = 2 Lives
    -- 11 = 3 Lives
    -- 10 = 4 Lives
    -- 01 = 5 Lives
    '0' & '1' &
    -- Initial High Score -----------------------------------------------------
    -- 00 = 0
    -- 11 = 5000
    -- 10 = 8000
    -- 01 = 10000
    "11" &
    -- Cabinet ----------------------------------------------------------------
    -- 0 = Upright
    -- 1 = Cocktail
    '0' &
    -- High Score Names -------------------------------------------------------
    -- 0 = 3 Letters
    -- 1 = 10 Letters
    '1' &
    -- Difficulty -------------------------------------------------------------
    -- 11 = Easy
    -- 10 = Medium
    -- 01 = Hard
    -- 00 = Hardest
    "11";

  constant ca_dip_block_2_c : std_logic_vector(7 downto 0) :=
    -- Pricing Options --------------------------------------------------------
    -- 1111 = 1 coin  1 credit
    -- 1110 = 1 coin  2 credits
    -- 1101 = 1 coin  3 credits
    -- 1100 = 1 coin  4 credits
    -- 1011 = 1 coin  5 credits
    -- 1010 = 2 coins 1 credit
    -- 1001 = 2 coins 3 credits
    -- 1000 = 3 coins 1 credit
    -- 0111 = 3 coins 2 credit
    -- 0110 = 4 coins 1 credit
    -- 0101 = 1 coin  1 credit
    -- 0100 = 1 coin  1 credit
    -- 0011 = 1 coin  1 credit
    -- 0010 = 1 coin  1 credit
    -- 0001 = 1 coin  1 credit
    -- 0000 = 1 coin  1 credit
    --
    -- Left Chute
    '1' & "111" &
    -- Right Chute
    '1' & "111";


  -----------------------------------------------------------------------------
  -- DIP switch settings for Dorodon
  -----------------------------------------------------------------------------
  constant do_dip_block_1_c : std_logic_vector(7 downto 0) :=
    -- Lives ------------------------------------------------------------------
    -- 1 = 3 Lives
    -- 0 = 5 Lives
    '0' &
    -- Free Play --------------------------------------------------------------
    -- 1 = No
    -- 0 = Yes
    '1' &
    -- Cabinet ----------------------------------------------------------------
    -- 0 = Upright
    -- 1 = Cocktail
    '0' &
    -- Freeze -----------------------------------------------------------------
    -- 1 = Off
    -- 0 = On
    '1' &
    -- Rack Test (Cheat) ------------------------------------------------------
    -- 1 = Off
    -- 0 = On
    '1' &
    -- Bonus Life -------------------------------------------------------------
    -- 1 = 20000
    -- 0 = 40000
    '1' &
    -- Difficulty -------------------------------------------------------------
    -- 11 = Easy
    -- 10 = Medium
    -- 01 = Hard
    -- 00 = Hardest
    "11";
  
  constant do_dip_block_2_c : std_logic_vector(7 downto 0) :=
    -- Pricing Options --------------------------------------------------------
    -- 1111 = 1 coin  1 credit
    -- 1110 = 1 coin  2 credits
    -- 1101 = 1 coin  3 credits
    -- 1100 = 1 coin  4 credits
    -- 1011 = 1 coin  5 credits
    -- 1010 = 2 coins 1 credit
    -- 1001 = 2 coins 3 credits
    -- 1000 = 3 coins 1 credit
    -- 0111 = 3 coins 2 credit
    -- 0110 = 4 coins 1 credit
    -- 0101 = 1 coin  1 credit
    -- 0100 = 1 coin  1 credit
    -- 0011 = 1 coin  1 credit
    -- 0010 = 1 coin  1 credit
    -- 0001 = 1 coin  1 credit
    -- 0000 = 1 coin  1 credit
    --
    -- Left Chute
    '1' & "111" &
    -- Right Chute
    '1' & "111";

end ladybug_dip_pack;
