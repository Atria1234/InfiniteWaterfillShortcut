function on_shortcut(event)
	if event.prototype_name == "FreeWaterfill__waterfill_shortcut" then
		local player = game.players[event.player_index]
		if player.clear_cursor() then
			local stack = player.cursor_stack
			if player.cursor_stack and stack.can_set_stack({ name = "waterfill", count = 1000000 }) then
				stack.set_stack({ name = "waterfill", count = 1000000 })
			end
		end
	end
end

script.on_event(defines.events.on_lua_shortcut, on_shortcut)
