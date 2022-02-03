minetest.override_item('default:leaves',{
  drop = {
    max_items = 1,
    items = {
      { items = {'default:sapling'}, rarity = 20 },
      { items = {'default:stick'}, rarity = 8 },
      { items= {'default:leaves'} }
    }
  }
})

minetest.override_item('default:gravel',{
  drop = {
    max_items = 1,
    items = {
      { items = {'default:flint'}, rarity = 16 },
      { items = {'new_crafts:flint_chunk'}, rarity = 32 },
      { items= {'default:gravel'} }
    }
  }
})

minetest.register_node("new_crafts:flint_chunk", {
  description = "A big chunk of flint",
  drawtype = 'mesh',
  mesh = 'flint_chunk.obj',
  tiles = {"flint_chunk.png"},
  groups = {oddly_breakable_by_hand = 2},
  paramtype2 = "facedir",
  selection_box = { type = 'fixed', fixed = {-0.5, -0.5, -0.5, 0.5, 0.0, 0.5} },
  collision_box = { type = 'fixed', fixed = {-0.5, -0.5, -0.5, 0.5, 0.0, 0.5} }
})
