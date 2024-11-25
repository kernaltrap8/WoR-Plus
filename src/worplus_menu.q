script RegisterUIStates_worplusmenu
	UI_RegisterState ${name = UIstate_options_worplusmenu
		params = {
			systems = [
				venue
				Crowd
				camera
				band
				stageshow
				musicmonitor
			]
			base_name = "options_worplusmenu"
			pakname = "band_lobby"
			anim_in_script = ui_options_worplusmenu_anim_in
			anim_out_script = ui_options_worplusmenu_anim_out
		}
	}

	UI_RegisterState ${name = UIstate_worplusmenu_submenu
		params = {
			systems = [
				venue
				Crowd
				camera
				band
				stageshow
				musicmonitor
			]
			base_name = "worplusmenu_submenu"
			pakname = "band_lobby"
			anim_in_script = ui_worplusmenu_submenu_anim_in
			anim_out_script = ui_worplusmenu_submenu_anim_out
		}
	}
endscript

script ui_init_options_worplusmenu

endscript
script ui_deinit_options_worplusmenu

endscript

script ui_options_worplusmenu_setup
	UI_SFX ${menustate = generic
		uitype = select
	}
	generic_event_choose ${state = UIstate_options_worplusmenu
	}
endscript

script ui_create_options_worplusmenu
	UIStack_CreateBoundScreenElement {
		parent = root_window
		id = options_worplusmenu_menu_id
		type = DescInterface
		desc = "mainmenu"
		tags = {
		}
		event_handlers = [
			{pad_back ui_options_worplusmenu_pad_back_script}
		]
		exclusive_device = ($none$primary_controller)
		menu_header_cont_alpha = 1.00
		menu_header_text_text = "WoR+ Settings"
	}
	attempt_to_add_friend_feed ${parent_id = options_worplusmenu_menu_id
		menu = main_generic
	}
	mainmenu_setup_physics_elements ${screen_id = options_worplusmenu_menu_id
	}
	UIStack_SpawnBoundScriptNow ${fg_objects_1
		params = {
			desc_id = options_worplusmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${ampzilla_anim
		params = {
			desc_id = options_worplusmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${anim_clouds
		params = {
			desc_id = options_worplusmenu_menu_id
		}
	}
	mainmenu_setup_option ${choose_script = ui_options_modmenu_setup
		back_script = ui_options_worplusmenu_pad_back_script
		menu_item_text = "Highway Settings"
		screen_id = options_menu_id
		helper_text = $struct$#"0x3AC90F0"
	}
	mainmenu_setup_option ${choose_script = ui_options_gemmenu_setup
		back_script = ui_options_pad_back_script
		menu_item_text = "Gem Settings"
		screen_id = options_menu_id
		helper_text = $struct$#"0x3AC90F0"
	}
	mainmenu_setup_option ${choose_script = ui_options_fxmenu_setup
		back_script = ui_options_pad_back_script
		menu_item_text = "FX Settings"
		screen_id = options_menu_id
		helper_text = $struct$#"0x3AC90F0"
	}
	mainmenu_setup_option ${choose_script = ui_options_postfxmenu_setup
		back_script = ui_options_pad_back_script
		menu_item_text = "PostFX Settings"
		screen_id = options_menu_id
		helper_text = $struct$#"0x3AC90F0"
	}
	mainmenu_setup_option ${choose_script = ui_options_miscmenu_setup
		back_script = ui_options_pad_back_script
		menu_item_text = "Misc Settings"
		screen_id = options_menu_id
		helper_text = $struct$#"0x3AC90F0"
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
script ui_destroy_options_worplusmenu
	clean_up_user_control_helpers
	if ScreenElementExists ${id = options_worplusmenu_menu_id
		}
		DestroyScreenElement ${id = options_worplusmenu_menu_id
		}
	endif
endscript
script ui_options_worplusmenu_check_settings
	if NOT (GotParam no_event)
		UI_SFX ${menustate = generic
			uitype = back
		}
		generic_event_back
	endif
endscript
script ui_options_worplusmenu_pad_back_script
	ui_options_worplusmenu_check_settings ${no_event
	}
	UI_SFX ${menustate = generic
		uitype = back
	}
	generic_event_back
endscript
script ui_options_worplusmenu_anim_in
	mainmenu_animate ${id = options_worplusmenu_menu_id
	}
endscript
script ui_options_worplusmenu_anim_out
	mainmenu_animate ${id = options_worplusmenu_menu_id
	}
endscript
