script RegisterUIStates_ModMenu
	UI_RegisterState ${name = UIstate_options_modmenu
		params = {
			systems = [
				venue
				Crowd
				camera
				band
				stageshow
				musicmonitor
			]
			base_name = "options_modmenu"
			pakname = "band_lobby"
			anim_in_script = ui_options_modmenu_anim_in
			anim_out_script = ui_options_modmenu_anim_out
		}
	}

	UI_RegisterState ${name = UIstate_modmenu_submenu
		params = {
			systems = [
				venue
				Crowd
				camera
				band
				stageshow
				musicmonitor
			]
			base_name = "modmenu_submenu"
			pakname = "band_lobby"
			anim_in_script = ui_modmenu_submenu_anim_in
			anim_out_script = ui_modmenu_submenu_anim_out
		}
	}
endscript

script ui_init_options_modmenu

endscript
script ui_deinit_options_modmenu

endscript

script ui_options_enable_black_highway
	Change ${use_black_highway = 1
	}
	printf ${"--WoR+ Debug-- calling Change ${highway_normal}"
	}
	Change ${highway_normal = [
		0
		0
		0
		255
	]
	}
	printf ${"--WoR+ Debug-- calling Change ${highway_starpower}"
	}
	Change ${highway_starpower = [
		64
		0
		0
		255
	]
	}
	printf ${"--WoR+ Debug-- calling Change ${highway_death}"
	}
	Change ${highway_death = [
		0
		0
		0
		255
	]
	}
	printf ${"--WoR+ Debug-- finished changing highway params - end of ui_options_enable_black_highway"
	}
	ui_options_modmenu_pad_back_script
endscript
script ui_options_enable_sp_nova
	Change ${use_sp_nova_flames = 1
	}
	ui_options_modmenu_pad_back_script
endscript
script ui_options_disable_sp_nova
	Change ${use_sp_nova_flames = 0
	}
	ui_options_modmenu_pad_back_script
endscript

script ui_options_modmenu_setup
	UI_SFX ${menustate = generic
		uitype = select
	}
	generic_event_choose ${state = UIstate_options_modmenu
	}
endscript

script ui_create_options_modmenu
	UIStack_CreateBoundScreenElement {
		parent = root_window
		id = options_modmenu_menu_id
		type = DescInterface
		desc = "mainmenu"
		tags = {
		}
		event_handlers = [
			{pad_back ui_options_modmenu_pad_back_script}
		]
		exclusive_device = ($none$primary_controller)
		menu_header_cont_alpha = 1.00
		menu_header_text_text = "HIGHWAY SETTINGS"
	}
	attempt_to_add_friend_feed ${parent_id = options_modmenu_menu_id
		menu = main_generic
	}
	mainmenu_setup_physics_elements ${screen_id = options_modmenu_menu_id
	}
	UIStack_SpawnBoundScriptNow ${fg_objects_1
		params = {
			desc_id = options_modmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${ampzilla_anim
		params = {
			desc_id = options_modmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${anim_clouds
		params = {
			desc_id = options_modmenu_menu_id
		}
	}
	mainmenu_setup_option ${choose_script = ui_options_enable_black_highway
		back_script = ui_options_modmenu_pad_back_script
		menu_item_text = "Enable Black Highway"
		screen_id = options_menu_id
		helper_text = "Enable Black Highway"
	}
	mainmenu_setup_option ${choose_script = ui_options_enable_sp_nova
		back_script = #"0x8DC78C0B"
		menu_item_text = "Enable SP Nova"
		screen_id = options_menu_id
		helper_text = "Enable SP Nova"
	}
	mainmenu_setup_option ${choose_script = ui_options_disable_sp_nova
		back_script = #"0x8DC78C0B"
		menu_item_text = "Disable SP Nova"
		screen_id = options_menu_id
		helper_text = "Disable SP Nova"
	}	
	
	main_menu_finalize
	ui_options_set_settings
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
script ui_destroy_options_modmenu
	clean_up_user_control_helpers
	if ScreenElementExists ${id = options_modmenu_menu_id
		}
		DestroyScreenElement ${id = options_modmenu_menu_id
		}
	endif
endscript
script ui_options_modmenu_check_settings
	if NOT (GotParam no_event)
		UI_SFX ${menustate = generic
			uitype = back
		}
		generic_event_back
	endif
endscript
script ui_options_modmenu_pad_back_script
	ui_options_modmenu_check_settings ${no_event
	}
	UI_SFX ${menustate = generic
		uitype = back
	}
	generic_event_back
endscript
script ui_options_modmenu_anim_in
	mainmenu_animate ${id = options_modmenu_menu_id
	}
endscript
script ui_options_modmenu_anim_out
	mainmenu_animate ${id = options_modmenu_menu_id
	}
endscript
