local halloween_rdm = minetest.get_modpath("halloween_rdm")

dofile(halloween_rdm.."/gen.lua")

minetest.register_node("halloween_rdm:pumpkin", {
    description = "Pumpkim",
tiles = {
		"pup_top.png", "pup_bottom.png",
		"pup_side.png", "pup_side.png",
		"pup_side.png", "pup_off_front.png"
	},
    groups = {choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
})

minetest.register_node("halloween_rdm:pumpkin_fire", {
    description = "Pumpkim Fire",
tiles = {
		"pup_top.png", "pup_bottom.png",
		"pup_side.png", "pup_side.png",
		"pup_side.png", "pup_on_front.png"
	},
    groups = {choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
})

minetest.register_craftitem("halloween_rdm:coin",{
description = "Coin",
inventory_image = "coin.png",
wield_image = "coin.png",
groups = {}
})

minetest.register_craftitem("halloween_rdm:coin_magis",{
description = "Coin Magis",
inventory_image = "magis_coin.png",
wield_image = "magis_coin.png",
groups = {}
})

minetest.register_craftitem("halloween_rdm:coin_mini",{
description = "Coin Mini",
inventory_image = "mini_coin.png",
wield_image = "mini_coim.png",
groups = {}
})


minetest.register_craft({
	output = "halloween_rdm:coin 9",
	recipe = {
		{"halloween_rdm:pumpkin_fire",}	
	},
})



minetest.register_craft({
	output = "halloween_rdm:pumpkin_fire",
	recipe = {
		{"halloween_rdm:coin","halloween_rdm:coin","halloween_rdm:coin"},	
		{"halloween_rdm:coin","halloween_rdm:coin","halloween_rdm:coin"},
		{"halloween_rdm:coin","halloween_rdm:coin","halloween_rdm:coin"},			
	},
})


minetest.register_craft({
	output = "halloween_rdm:coin",
	recipe = {
		{"halloween_rdm:coin_mini","halloween_rdm:coin_mini","halloween_rdm:coin_mini"},	
		{"halloween_rdm:coin_mini","halloween_rdm:coin_mini","halloween_rdm:coin_mini"},
		{"halloween_rdm:coin_mini","halloween_rdm:coin_mini","halloween_rdm:coin_mini"},			
	},
})

minetest.register_craft({
	output = "halloween_rdm:coin_mini",
	recipe = {
		{"default:gold_ingot","default:gold_ingot","default:gold_ingot"},	
		{"default:gold_ingot","default:gold_ingot","default:gold_ingot"},
		{"default:gold_ingot","default:gold_ingot"},			
	},
})

minetest.register_craft({
	output = "halloween_rdm:coin_magis",
	recipe = {
		{"default:gold_ingot","default:gold_ingot","default:gold_ingot"},	
		{"default:gold_ingot","default:diamond","default:gold_ingot"},
		{"default:gold_ingot","default:gold_ingot","default:gold_ingot"},			
	},
})

minetest.register_craft({
	output = "halloween_rdm:pumpkin",
	recipe = {
		{"halloween_rdm:coin_magis","halloween_rdm:coin_magis","halloween_rdm:coin_magis"},	
		{"halloween_rdm:coin_magis","halloween_rdm:coin_magis","halloween_rdm:coin_magis"},
		{"halloween_rdm:coin_magis","halloween_rdm:coin_magis","halloween_rdm:coin_magis"},			
	},
})

minetest.register_craft({
	output = "halloween_rdm:coin_magis",
	recipe = {
		{"halloween_rdm:pumpkin"},				
	},
})

minetest.register_craft({
	output = "halloween_rdm:pumpkin 2",
	recipe = {
		{"halloween_rdm:pumpkin_fire"},				
	},
})

