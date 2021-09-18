-- Nodes
minetest.register_node("mod1:test_block", {
	description = "Test Block",
	tiles = {"test_block.png"},
	groups = {oddly_breakable_by_hand = 1}
})

minetest.register_node("mod1:refined_test_block", {
	description = "Refined Test Block",
	tiles = {"refined_test_block.png"},
	groups = {oddly_breakable_by_hand = 2}
})

-- Crafting
minetest.register_craft({
	output = "mod1:test_block 2",
	recipe = {
		{"default:dirt","default:dirt"},
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
