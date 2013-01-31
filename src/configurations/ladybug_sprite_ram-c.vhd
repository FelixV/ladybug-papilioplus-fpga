-------------------------------------------------------------------------------
--
-- FPGA Lady Bug
--
-- $Id: ladybug_sprite_ram-c.vhd,v 1.3 2005/11/06 15:43:17 arnim Exp $
--
-------------------------------------------------------------------------------

configuration ladybug_sprite_ram_struct_c0 of ladybug_sprite_ram is

  for struct

    for ram_1kx8_b : ram_1kx8
      use configuration work.ram_1kx8_c0;
    end for;

  end for;

end ladybug_sprite_ram_struct_c0;
