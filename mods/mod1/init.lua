-- Nodes
minetest.register_node("mod1:test_block", {
	description = "Test Block",
	tiles = {"test_block.png","test_block.png",
		{
			name ="test_block_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.5,
			}
		}
	},
	groups = {oddly_breakable_by_hand = 1}
})

minetest.register_node("mod1:refined_test_block", {
	description = "Refined Test Block",
	tiles = {"refined_test_block.png"},
	groups = {oddly_breakable_by_hand = 2}
})

minetest.register_node("mod1:test_block_pieces", {
	description = "Test Block Pieces",
	tiles = {"test_block_pieces.png"},
	drop = "mod1:test_fragment 2",
	groups = {oddly_breakable_by_hand = 2}
})

-- Items

minetest.register_craftitem("mod1:test_fragment", {
	description = "Test Block Fragment",
	inventory_image = "test_fragment.png",
	on_use = function(itemstack, user, pointed_thing)
		itemstack:take_item(1)
		return itemstack
	end,
})

-- Crafting
minetest.register_craft({
	output = "mod1:test_block 2",
	recipe = {
		{"default:dirt","default:dirt"},
	}
})

minetest.register_craft({
	output = "mod1:test_fragment 2",
	recipe = {
		{"mod1:test_block"},
	}
})


minetest.register_craft({
	output = "mod1:test_block_pieces",
	recipe = {
		{"mod1:test_fragment","mod1:test_fragment"},
	}
})

minetest.register_craft({
	output = "mod1:test_block",
	recipe = {
		{"default:tree","mod1:refined_test_block"},
	},
	replacements = {{"default:tree","default:leaves"}}
})

minetest.register_craft({
	output = "mod1:test_block",
	recipe = {
		{"default:stick","mod1:test_block_pieces"},
	},
	replacements = {{"default:stick","default:stick"}}
})

minetest.register_craft({
	type = "cooking",
	output = "mod1:refined_test_block",
	recipe = "mod1:test_block",
	cooktime = 2,
})

minetest.register_craft({
	type = "cooking",
	output = "mod1:test_block",
	recipe = "mod1:refined_test_block",
	cooktime = 5,
})

-- Fuel
minetest.register_craft({
	type = "fuel",
	recipe = "mod1:test_block",
	burntime = 1,
})
