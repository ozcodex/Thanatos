minetest.register_on_newplayer(function(player)
      local meta = player:get_meta()
      meta.set_string("name","Mr. Nobody")
end)

