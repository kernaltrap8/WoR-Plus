SectionArray debug_submenus {
    ArrayStruct {
        StructHeader {
            StructString id = "main"
            StructQBStringQs Title = 0x49a0d144
			StructQBKey back_script = debug_menu_back_to_retail_menu
            StructArray items {
                ArrayStruct {
                    StructHeader {
                        StructQBStringQs text = aed52e33
                        StructQBKey type = run_script
                        StructQBKey choose_script = set_wormod_options
                    }
                }
            }
        }
    }
}

Script set_wormod_options [
    $change$${StructInt debug_use_screen_noise = 0}$
    $change$${StructInt debug_use_motion_blur = 0}$
    $change$${StructInt g_debug_highway_visible = 0}$
    $change$${StructInt enable_button_cheats = 1}$
]
