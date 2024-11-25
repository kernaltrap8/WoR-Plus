script RegisterUIStates_GemMenu
	UI_RegisterState ${name = UIstate_options_gemmenu
		params = {
			systems = [
				venue
				Crowd
				camera
				band
				stageshow
				musicmonitor
			]
			base_name = "options_gemmenu"
			pakname = "band_lobby"
			anim_in_script = ui_options_gemmenu_anim_in
			anim_out_script = ui_options_gemmenu_anim_out
		}
	}
endscript

script ui_init_options_gemmenu

endscript
script ui_deinit_options_gemmenu

endscript

script ui_options_gemmenu_setup
	UI_SFX ${menustate = generic
		uitype = select
	}
	generic_event_choose ${state = UIstate_options_gemmenu
	}
endscript

script ui_options_change_material_hero
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 0
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_pink
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to pink_gems"
	}
	Change ${Cheat_GemColor = 1
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_stealth
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to Stealth_gems"
	}
	Change ${Cheat_GemColor = 2
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_eggs_n_bacon
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to Eggs_N_Bacon_gems"
	}
	Change ${Cheat_GemColor = 3
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_old_glory
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to Old_Glory_gems"
	}
	Change ${Cheat_GemColor = 4
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_solid_gold
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to Solid_Gold_gems"
	}
	Change ${Cheat_GemColor = 5
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_platinum
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 6
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_diabolic
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 7
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_toxic_waste
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 8
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
endscript
script ui_options_change_material_black
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 9
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_pastel
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 10
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_dark
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 11
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_outline
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 12
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_purple
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 13
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_pastel_purple
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 14
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_trans_pride
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 15
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_synthwave
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 16
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_blue
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_gems"
	}
	Change ${Cheat_GemColor = 17
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_red
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to Diabolic_gems"
	}
	Change ${Cheat_GemColor = 18
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript
script ui_options_change_material_palpatine
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to Diabolic_gems"
	}
	Change ${Cheat_GemColor = 19
	}
	printf ${"--WoR+ Debug-- changed materials"
	}
	printf ${"--WoR+ Debug-- calling create_in_game_materials"
	}
	create_in_game_materials ${
		savegame = 0
		async = 1
	}
	create_multipass_materials ${
		async = 1
	}
	ui_options_gemmenu_pad_back_script
endscript

script ui_create_options_gemmenu
	UIStack_CreateBoundScreenElement {
		parent = root_window
		id = options_gemmenu_menu_id
		type = DescInterface
		desc = "mainmenu"
		tags = {
		}
		event_handlers = [
			{pad_back ui_options_gemmenu_pad_back_script}
		]
		exclusive_device = ($primary_controller)
		menu_header_cont_alpha = 1.00
		menu_header_text_text = "GEM SETTINGS"
	}
	attempt_to_add_friend_feed ${parent_id = options_gemmenu_menu_id
		menu = main_generic
	}
	mainmenu_setup_physics_elements ${screen_id = options_gemmenu_menu_id
	}
	UIStack_SpawnBoundScriptNow ${fg_objects_1
		params = {
			desc_id = options_gemmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${ampzilla_anim
		params = {
			desc_id = options_gemmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${anim_clouds
		params = {
			desc_id = options_gemmenu_menu_id
		}
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_hero
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Hero"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_pink
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Pink"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_stealth
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Stealth"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_eggs_n_bacon
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Eggs N Bacon"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_old_glory
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Old Glory"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_solid_gold
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Solid Gold"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_platinum
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Platinum"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_diabolic
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Diabolic"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_toxic_waste
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Toxic Waste"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_black
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Black"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_pastel
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Pastel Hero"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_dark
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Dark"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_outline
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Outline"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_purple
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Purple"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_pastel_purple
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Pastel Purple"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_trans_pride
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Trans Pride"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_synthwave
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Synthwave"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_blue
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Blue"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_red
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Hollow Red"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_material_palpatine
		back_script = #"0x8DC78C0B"
		menu_item_text = "Gem Color: Palpatine"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	
	main_menu_finalize
	LaunchEvent type = focus target = current_menu data = {child_index = &selected_index}

	add_user_control_helper ${text = "SELECT"
		button = green
		z = 100000
		all_buttons
	}
	add_user_control_helper ${text = "BACK"
		button = red
		z = 100000
		all_buttons
	}

endscript
script ui_destroy_options_gemmenu
	clean_up_user_control_helpers
	if ScreenElementExists ${id = options_gemmenu_menu_id
		}
		DestroyScreenElement ${id = options_gemmenu_menu_id
		}
	endif
endscript
script ui_options_gemmenu_check_settings
	if NOT (GotParam no_event)
		UI_SFX ${menustate = generic
			uitype = back
		}
		generic_event_back
	endif
endscript
script ui_options_gemmenu_pad_back_script
	ui_options_gemmenu_check_settings ${no_event
	}
	UI_SFX ${menustate = generic
		uitype = back
	}
	generic_event_back
endscript
script ui_options_gemmenu_anim_in
	mainmenu_animate ${id = options_gemmenu_menu_id
	}
endscript
script ui_options_gemmenu_anim_out
	mainmenu_animate ${id = options_gemmenu_menu_id
	}
endscript
