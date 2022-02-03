minetest.register_on_joinplayer(function(player)
  local meta = player:get_meta()
  local name = meta:get_string("name")
  player:set_inventory_formspec("size[8,8.5]"..
                                  "label[0.5,0.5;This is the story of "..name.."]"..
                                  "label[0.5,1.5;An adventurer from a distant land]"..
                                  "button_exit[6.5,0.5;1.0,0.5;close;X]")

  -- Limit to only contain hotbar
  player:get_inventory():set_size("main", 8)
end)
