--- STEAMODDED HEADER
--- MOD_NAME: UltraHand
--- MOD_ID: UltraHand
--- MOD_AUTHOR: [Xioxin]
--- MOD_DESCRIPTION: Click on the card in the collection menu to spawn, ignoring the card count limit.

----------------------------------------------
------------MOD CODE -------------------------

G.X_CHEAT_SETTINGS = {
	spawn = false
}

local CardClickRef = Card.click;
function Card:click()
	if G.OVERLAY_MENU then
		local _card = self;
		if G.X_CHEAT_SETTINGS.spawn then
			if _card.ability.set == 'Joker' and G.jokers then
				add_joker(_card.config.center.key)
				_card:set_sprites(_card.config.center)
			end
			if _card.ability.consumeable and G.consumeables then
				add_joker(_card.config.center.key)
				_card:set_sprites(_card.config.center)
			end
		else
			unlock_card(_card.config.center)
            _card:set_sprites(_card.config.center)
		end
	end
	CardClickRef(self)
end

local spawnToggleLabel = 'Click on card to spawn'

local createYourCollectionJokersRef = create_UIBox_your_collection_jokers;
function create_UIBox_your_collection_jokers()
	local contents = createYourCollectionJokersRef()
	local spawn_toggle = create_toggle({label = spawnToggleLabel, ref_table = G.X_CHEAT_SETTINGS, ref_value = 'spawn'})
	table.insert(contents.nodes[1].nodes[1].nodes[1].nodes, #contents.nodes[1].nodes[1].nodes[1].nodes + 1, spawn_toggle)
	return contents
end

local createYourCollectionTarotsRef = create_UIBox_your_collection_tarots;
function create_UIBox_your_collection_tarots()
	local contents = createYourCollectionTarotsRef()
	local spawn_toggle = create_toggle({label = spawnToggleLabel, ref_table = G.X_CHEAT_SETTINGS, ref_value = 'spawn'})
	table.insert(contents.nodes[1].nodes[1].nodes[1].nodes, #contents.nodes[1].nodes[1].nodes[1].nodes + 1, spawn_toggle)
	return contents
end

local createYourCollectionPlanetsRef = create_UIBox_your_collection_planets;
function create_UIBox_your_collection_planets()
	local contents = createYourCollectionPlanetsRef()
	local spawn_toggle = create_toggle({label = spawnToggleLabel, ref_table = G.X_CHEAT_SETTINGS, ref_value = 'spawn'})
	table.insert(contents.nodes[1].nodes[1].nodes[1].nodes, #contents.nodes[1].nodes[1].nodes[1].nodes + 1, spawn_toggle)
	return contents
end

local createYourCollectionSpectralsRef = create_UIBox_your_collection_spectrals;
function create_UIBox_your_collection_spectrals()
	local contents = createYourCollectionSpectralsRef()
	local spawn_toggle = create_toggle({label = spawnToggleLabel, ref_table = G.X_CHEAT_SETTINGS, ref_value = 'spawn'})
	table.insert(contents.nodes[1].nodes[1].nodes[1].nodes, #contents.nodes[1].nodes[1].nodes[1].nodes + 1, spawn_toggle)
	return contents
end



----------------------------------------------
------------MOD CODE END----------------------
