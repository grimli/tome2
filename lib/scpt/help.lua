-- Ingame contextual help

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-----------------------Here comes the definition of help-----------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

ingame_help
{
	["callback"] =  "monster_chat",
	["desc"] =
	{
		"Somebody is speaking to you it seems. You can talk back with the Y key.",
		"This can lead to quests. You can also give items to 'monsters' with the y key.",
	}
}

ingame_help
{
	["no_test"] =   TRUE,
	["callback"] =  "select_context",
	["fct"] =       function(typ, name)
			-- list of files for classes, { filename, anchor }
			local t =
			{
				["skill"] =
				{
					["Air"] = { "skills.txt", 27 },
					["Alchemy"] = { "skills.txt", 49 },
					["Antimagic"] = { "skills.txt", 50 },
					["Archery"] = { "skills.txt", 08 },
					["Axe-mastery"] = { "skills.txt", 05 },
					["Backstab"] = { "skills.txt", 18 },
					["Barehand-combat"] = { "skills.txt", 13 },
					["Boomerang-mastery"] = { "skills.txt", 12 },
					["Boulder-throwing"] = { "skills.txt", 58 },
					["Bow-mastery"] = { "skills.txt", 10 },
					["Combat"] = { "skills.txt", 01 },
					["Conveyance"] = { "skills.txt", 30 },
					["Corpse-preservation"] = { "skills.txt", 44 },
					["Critical-hits"] = { "skills.txt", 04 },
					["Crossbow-mastery"] = { "skills.txt", 11 },
					["Demonology"] = { "skills.txt", 52 },
					["Disarming"] = { "skills.txt", 16 },
					["Divination"] = { "skills.txt", 31 },
					["Dodging"] = { "skills.txt", 20 },
					["Druidistic"] = { "skills.txt", 40 },
					["Earth"] = { "skills.txt", 28 },
					["Fire"] = { "skills.txt", 25 },
					["Geomancy"] = { "skills.txt", 60 },
					["Hafted-mastery"] = { "skills.txt", 06 },
					["Magic"] = { "skills.txt", 21 },
					["Magic-Device"] = { "skills.txt", 54 },
					["Mana"] = { "skills.txt", 24 },
					["Meta"] = { "skills.txt", 29 },
					["Mimicry"] = { "skills.txt", 47 },
					["Mind"] = { "skills.txt", 33 },
					["Mindcraft"] = { "skills.txt", 41 },
					["Monster-lore"] = { "skills.txt", 42 },
					["Music"] = { "skills.txt", 59 },
					["Nature"] = { "skills.txt", 34 },
					["Necromancy"] = { "skills.txt", 35 },
					["Polearm-mastery"] = { "skills.txt", 07 },
					["Possession"] = { "skills.txt", 45 },
					["Prayer"] = { "skills.txt", 39 },
					["Runecraft"] = { "skills.txt", 36 },
					["Sling-mastery"] = { "skills.txt", 09 },
					["Sneakiness"] = { "skills.txt", 14 },
					["Spell-power"] = { "skills.txt", 22 },
					["Spirituality"] = { "skills.txt", 38 },
					["Sorcery"] = { "skills.txt", 23 },
					["Stealing"] = { "skills.txt", 19 },
					["Stealth"] = { "skills.txt", 15 },
					["Stunning-blows"] = { "skills.txt", 53 },
					["Summoning"] = { "skills.txt", 43 },
					["Sword-mastery"] = { "skills.txt", 03 },
					["Symbiosis"] = { "skills.txt", 46 },
					["Temporal"] = { "skills.txt", 32 },
					["Thaumaturgy"] = { "skills.txt", 37 },
					["Udun"] = { "skills.txt", 48 },
					["Weaponmastery"] = { "skills.txt", 02 },
					["Water"] = { "skills.txt", 26 },
				},
				["ability"] = 
				{
				    ["Spread blows"] = { "ability.txt", 02 },
				    ["Tree walking"] = { "ability.txt", 03 },
				    ["Perfect casting"] = { "ability.txt", 04 },
				    ["Extra Max Blow(1)"] = { "ability.txt", 05 },
				    ["Extra Max Blow(2)"] = { "ability.txt", 06 },
				    ["Ammo creation"] = { "ability.txt", 07 },
				    ["Touch of death"] = { "ability.txt", 08 },
				    ["Artifact Creation"] = { "ability.txt", 09 },
				    ["Far reaching attack"] = { "ability.txt", 10 },
				    ["Trapping"] = { "ability.txt", 11 },
				    ["Undead Form"] = { "ability.txt", 12 },
				},
			}

			if t[typ][name] then ingame_help_doc(t[typ][name][1], t[typ][name][2])
			else ingame_help_doc("help.hlp", 0)
			end
	end,
}
