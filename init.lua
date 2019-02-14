--[[
	Créé par turbogus

	licences:
	- Pour les lucioles et le seau vide, se reporter au licences des mods correspondants.
	- Pour le mod luciferine, code: WTFPL, graphismes: WTFPL
]]--

-- Déclaration item seau de luciole écrasée:
minetest.register_craftitem("luciferine:bucket_crushed_firefly", {
	description = "Bucket of crushed firefly.",
	inventory_image = "bucket_crushed_firefly.png",
})



-- Luciferine:
minetest.register_node("luciferine:luciferine", {
	description = "Luciferine Powder",
	drawtype = "signlike",
	inventory_image = "luciferine_powder.png",
	wield_image = "luciferine_powder.png",
	tiles = {"luciferine_on_node.png"},	
	groups = {snappy = 3},
	drop = 'luciferine:luciferine',
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	sounds = default.node_sound_stone_defaults(),
	light_source = default.LIGHT_MAX,
})

-- Craft du seau de luciole écrasé:
minetest.register_craft({
	output = "luciferine:bucket_crushed_firefly",
	recipe = {
		{"fireflies:firefly"},
		{"bucket:bucket_water"},
		}
})

-- Cuisson du seau de luciole écrasée pour créer de la luciférine:
minetest.register_craft({
	type = "cooking",
	output = "luciferine:luciferine 4",
	recipe = "luciferine:bucket_crushed_firefly",
	replacements = {{"luciferine:bucket_crushed_firefly", "bucket:bucket_empty"}},
})
