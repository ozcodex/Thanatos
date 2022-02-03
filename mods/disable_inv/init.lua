if minetest.global_exists("sfinv") then
    sfinv.enabled = false
end

minetest.register_on_joinplayer(function(player)
    player:set_inventory_formspec("size[3,1.5]label[0.05,0.05;This game has no inventory]button_exit[0.8,0.8;1.5,0.8;close;Close]")

    -- Limit to only contain hotbar
    player:get_inventory():set_size("main", 8)
end)
