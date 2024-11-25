script RegisterUIStates_miscmenu
	UI_RegisterState ${name = UIstate_options_miscmenu
		params = {
			systems = [
				venue
				Crowd
				camera
				band
				stageshow
				musicmonitor
			]
			base_name = "options_miscmenu"
			pakname = "band_lobby"
			anim_in_script = ui_options_miscmenu_anim_in
			anim_out_script = ui_options_miscmenu_anim_out
		}
	}

	UI_RegisterState ${name = UIstate_miscmenu_submenu
		params = {
			systems = [
				venue
				Crowd
				camera
				band
				stageshow
				musicmonitor
			]
			base_name = "miscmenu_submenu"
			pakname = "band_lobby"
			anim_in_script = ui_miscmenu_submenu_anim_in
			anim_out_script = ui_miscmenu_submenu_anim_out
		}
	}
endscript

script ui_init_options_miscmenu

endscript
script ui_deinit_options_miscmenu

endscript

script ui_options_miscmenu_setup
	UI_SFX ${menustate = generic
		uitype = select
	}
	generic_event_choose ${state = UIstate_options_miscmenu
	}
endscript

script ui_create_options_miscmenu
	UIStack_CreateBoundScreenElement {
		parent = root_window
		id = options_miscmenu_menu_id
		type = DescInterface
		desc = "mainmenu"
		tags = {
		}
		event_handlers = [
			{pad_back ui_options_miscmenu_pad_back_script}
		]
		exclusive_device = ($none$primary_controller)
		menu_header_cont_alpha = 1.00
		menu_header_text_text = "MISC SETTINGS"
	}
	attempt_to_add_friend_feed ${parent_id = options_miscmenu_menu_id
		menu = main_generic
	}
	mainmenu_setup_physics_elements ${screen_id = options_miscmenu_menu_id
	}
	UIStack_SpawnBoundScriptNow ${fg_objects_1
		params = {
			desc_id = options_miscmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${ampzilla_anim
		params = {
			desc_id = options_miscmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${anim_clouds
		params = {
			desc_id = options_miscmenu_menu_id
		}
	}
	mainmenu_setup_option ${choose_script = miscmenu_enable_debug
		back_script = ui_options_miscmenu_pad_back_script
		menu_item_text = "Enable Debug"
		screen_id = options_menu_id
		helper_text = "NEW MENU"
	}

	mainmenu_setup_option ${choose_script = miscmenu_disable_debug
		back_script = ui_options_miscmenu_pad_back_script
		menu_item_text = "Disable Debug"
		screen_id = options_menu_id
		helper_text = "NEW MENU"
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
script ui_destroy_options_miscmenu
	clean_up_user_control_helpers
	if ScreenElementExists ${id = options_miscmenu_menu_id
		}
		DestroyScreenElement ${id = options_miscmenu_menu_id
		}
	endif
endscript
script ui_options_miscmenu_check_settings
	if NOT (GotParam no_event)
		UI_SFX ${menustate = generic
			uitype = back
		}
		generic_event_back
	endif
endscript
script ui_options_miscmenu_pad_back_script
	ui_options_miscmenu_check_settings ${no_event
	}
	UI_SFX ${menustate = generic
		uitype = back
	}
	generic_event_back
endscript
script ui_options_miscmenu_anim_in
	mainmenu_animate ${id = options_miscmenu_menu_id
	}
endscript
script ui_options_miscmenu_anim_out
	mainmenu_animate ${id = options_miscmenu_menu_id
	}
endscript

script miscmenu_enable_debug
	Change ${enable_button_cheats = 1
	}
	Change ${debug_show_analog_options = 1
	}
	ui_options_miscmenu_pad_back_script
endscript
script miscmenu_disable_debug
	Change ${enable_button_cheats = 0
	}
	Change ${debug_show_analog_options = 0
	}
	ui_options_miscmenu_pad_back_script
endscript
