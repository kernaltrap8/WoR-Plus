script RegisterUIStates_postfxmenu
	UI_RegisterState ${name = UIstate_options_postfxmenu
		params = {
			systems = [
				venue
				Crowd
				camera
				band
				stageshow
				musicmonitor
			]
			base_name = "options_postfxmenu"
			pakname = "band_lobby"
			anim_in_script = ui_options_postfxmenu_anim_in
			anim_out_script = ui_options_postfxmenu_anim_out
		}
	}
endscript

script ui_init_options_postfxmenu

endscript
script ui_deinit_options_postfxmenu

endscript

script ui_options_postfxmenu_setup
	UI_SFX ${menustate = generic
		uitype = select
	}
	generic_event_choose ${state = UIstate_options_postfxmenu
	}
endscript
script ui_options_enable_postfx_screennoise
	printf ${"--WoR+ Debug-- calling ui_options_enable_postfx_screennoise"
	}
	if (ScreenFX_FXInstanceExists ${viewport = bg_viewport name = Noise_Lite})
		printf ${"--WoR+ Debug-- we got to the if statement"
		}
		ScreenFX_UpdateFXInstanceParams ${
			viewport = bgviewport
			name = Noise_Lite
			scefname = Noise_Lite
			type = noise2
			on = 1
		}
		printf ${"--WoR+ Debug-- did we get past updating the screenfx?"
		}
	endif
	ui_options_postfxmenu_pad_back_script
endscript
script ui_options_disable_postfx_screennoise
	if (ScreenFX_FXInstanceExists ${viewport = bg_viewport name = godray})
		ScreenFX_UpdateFXInstanceParams ${
			viewport = bgviewport
			name = Noise_Light
			scefname = Noise_Lite
			type = noise2
			on = 0
		}
	endif
	ui_options_postfxmenu_pad_back_script
endscript
script ui_create_options_postfxmenu
	UIStack_CreateBoundScreenElement {
		parent = root_window
		id = options_postfxmenu_menu_id
		type = DescInterface
		desc = "mainmenu"
		tags = {
		}
		event_handlers = [
			{pad_back ui_options_postfxmenu_pad_back_script}
		]
		exclusive_device = ($primary_controller)
		menu_header_cont_alpha = 1.00
		menu_header_text_text = "POSTFX SETTINGS"
	}
	attempt_to_add_friend_feed ${parent_id = options_postfxmenu_menu_id
		menu = main_generic
	}
	mainmenu_setup_physics_elements ${screen_id = options_postfxmenu_menu_id
	}
	UIStack_SpawnBoundScriptNow ${fg_objects_1
		params = {
			desc_id = options_postfxmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${ampzilla_anim
		params = {
			desc_id = options_postfxmenu_menu_id
		}
	}
	UIStack_SpawnBoundScriptNow ${anim_clouds
		params = {
			desc_id = options_postfxmenu_menu_id
		}
	}
	mainmenu_setup_option ${choose_script = ui_options_enable_postfx_screennoise
		back_script = #"0x8DC78C0B"
		menu_item_text = "Screen Noise: On"
		screen_id = options_menu_id
		helper_text = "PostFX"
	}
	mainmenu_setup_option ${choose_script = ui_options_disable_postfx_screennoise
		back_script = #"0x8DC78C0B"
		menu_item_text = "Screen Noise: Off"
		screen_id = options_menu_id
		helper_text = "PostFX"
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
script ui_destroy_options_postfxmenu
	clean_up_user_control_helpers
	if ScreenElementExists ${id = options_postfxmenu_menu_id
		}
		DestroyScreenElement ${id = options_postfxmenu_menu_id
		}
	endif
endscript
script ui_options_postfxmenu_check_settings
	if NOT (GotParam no_event)
		UI_SFX ${menustate = generic
			uitype = back
		}
		generic_event_back
	endif
endscript
script ui_options_postfxmenu_pad_back_script
	ui_options_postfxmenu_check_settings ${no_event
	}
	UI_SFX ${menustate = generic
		uitype = back
	}
	generic_event_back
endscript
script ui_options_postfxmenu_anim_in
	mainmenu_animate ${id = options_postfxmenu_menu_id
	}
endscript
script ui_options_postfxmenu_anim_out
	mainmenu_animate ${id = options_postfxmenu_menu_id
	}
endscript
