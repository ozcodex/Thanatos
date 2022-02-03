minetest.override_item('default:leaves',{
  drop = {
    max_items = 1,
    items = {
      {
        items = {'default:sapling'},
        rarity = 20, -- 1/20
      },
      {
        items = {'default:stick'},
        rarity = 5
      },
      { 
        items= {'default:leaves'}
      }
    }
  }
})
