shell_string_prompt_with_new_line db STATIC_ASCII_NEW_LINE
shell_string_prompt   db STATIC_COLOR_ASCII_RED_LIGHT
shell_string_prompt_type  db "# "
shell_string_prompt_type_end  db STATIC_COLOR_ASCII_DEFAULT

shell_string_prompt_end:

	shell_exec_path    db "/bin/"

shell_exec_path_end:

shell_cache:
	times SHELL_CACHE_SIZE_byte db STATIC_EMPTY

	shell_command_clean   db "clean"

shell_command_clean_end:
	shell_command_exit   db "exit"

shell_command_exit_end:

	shell_command_unknown   db STATIC_COLOR_ASCII_RED_LIGHT, "unknwon command", STATIC_ASCII_NEW_LINE

shell_command_unknown_end:
