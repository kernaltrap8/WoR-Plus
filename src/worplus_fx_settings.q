script RegisterUIStates_FXMenu
	UI_RegisterState ${name = UIstate_options_fxmenu
		params = {
			systems = [
				venue
				Crowd
				camera
				band
				stageshow
				musicmonitor
			]
			base_name = "options_fxmenu"
			pakname = "band_lobby"
			anim_in_script = ui_options_fxmenu_anim_in
			anim_out_script = ui_options_fxmenu_anim_out
		}
	}
endscript

script ui_init_options_fxmenu

endscript
script ui_deinit_options_fxmenu

endscript

script ui_options_fxmenu_setup
	UI_SFX ${menustate = generic
		uitype = select
	}
	generic_event_choose ${state = UIstate_options_fxmenu
	}
endscript
script ui_options_change_fx_hero
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 0
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_pink
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to pink_fx"
	}
	Change ${Cheat_FXColor = 1
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_pastel_pink
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 2
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_purple
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 3
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_synthwave
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 4
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_stealth
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 5
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_eggs_n_bacon
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 6
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_old_glory
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 7
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_toxic_waste
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 8
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_diabolic
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 9
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_blue
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 10
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
script ui_options_change_fx_red
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 11
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_options_change_fx_palpatine
	destroy_in_game_materials
	destroy_multipass_materials
	printf ${"--WoR+ Debug-- calling ui_options_change_material"
	}
	printf ${"--WoR+ Debug-- changing materials to standard_fx"
	}
	Change ${Cheat_FXColor = 12
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
	ui_options_fxmenu_pad_back_script
endscript
script ui_create_options_fxmenu
	UIStack_CreateBoundScreenElement {
		parent = root_window
		id = options_fxmenu_menu_id
		type = DescInterface
		desc = "mainmenu"
		tags = {
		}
		event_handlers = [
			{pad_back ui_options_fxmenu_pad_back_script}
		]
		exclusive_device = ($primary_controller)
		menu_header_cont_alpha = 1.00
		menu_header_text_text = "FX SETTINGS"
	}
	attempt_to_add_friend_feed ${parent_id = options_fxmenu_menu_id
		menu = main_generic
	}
	mainmenu_setup_physics_elements ${screen_id = options_fxmenu_menu_id
	}
	UIStack_SpawnBoundScriptNow ${fg_objects_1
		params = {
			desc_id = options_fxmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${ampzilla_anim
		params = {
			desc_id = options_fxmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${anim_clouds
		params = {
			desc_id = options_fxmenu_menu_id
		}
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_hero
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Hero"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_pink
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Pink"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_pastel_pink
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Pastel Pink"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_purple
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Purple"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_synthwave
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Synthwave"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_stealth
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Stealth"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_eggs_n_bacon
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Eggs N Bacon"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_old_glory
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Old Glory"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_toxic_waste
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Toxic Waste"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_diabolic
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Diabolic"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_blue
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Blue"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_red
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Hollow Red"
		screen_id = options_menu_id
		helper_text = "Gem Colors"
	}
	mainmenu_setup_option ${choose_script = ui_options_change_fx_palpatine
		back_script = #"0x8DC78C0B"
		menu_item_text = "FX Color: Palpatine"
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
script ui_destroy_options_fxmenu
	clean_up_user_control_helpers
	if ScreenElementExists ${id = options_fxmenu_menu_id
		}
		DestroyScreenElement ${id = options_fxmenu_menu_id
		}
	endif
endscript
script ui_options_fxmenu_check_settings
	if NOT (GotParam no_event)
		UI_SFX ${menustate = generic
			uitype = back
		}
		generic_event_back
	endif
endscript
script ui_options_fxmenu_pad_back_script
	ui_options_fxmenu_check_settings ${no_event
	}
	UI_SFX ${menustate = generic
		uitype = back
	}
	generic_event_back
endscript
script ui_options_fxmenu_anim_in
	mainmenu_animate ${id = options_fxmenu_menu_id
	}
endscript
script ui_options_fxmenu_anim_out
	mainmenu_animate ${id = options_fxmenu_menu_id
	}
endscript
