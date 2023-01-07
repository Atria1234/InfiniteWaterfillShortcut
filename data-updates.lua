data.raw.item["waterfill"].stack_size = 1000000
data.raw.item["waterfill"].flags = { "only-in-cursor" }
data.raw.item["waterfill"].draw_label_for_cursor_render = true

data.raw.recipe["waterfill"].enabled = false

data.raw.technology["waterfill"].effects = {
	{
		type = "nothing",
		effect_description = { "effect-description.FreeWaterfill__enable_waterfill_shortcut" },
		icon = "__Waterfill_v17__/water.png",
		icon_size = 128
	}
}

data:extend(
{
	{
		type = "shortcut",
		name = "FreeWaterfill__waterfill_shortcut",
		technology_to_unlock = "waterfill",
		action = "lua",
		icon =
		{
			filename = "__Waterfill_v17__/water.png",
			priority = "extra-high-no-scale",
			size = 128,
			scale = 1,
			flags = { "icon" }
		}
	}
})
