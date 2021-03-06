class_name HomeScreen
extends BaseScreen

const PROJECT_SCREEN_PATH: String = "res://screens/ProjectScreen.tscn"

###############################################################################
# Builtin functions                                                           #
###############################################################################

func _ready() -> void:
	if not AppManager.current_save_data.empty():
		_load_from_data(AppManager.current_save_data)
	else:
		_load_defaults()
	
	$Display/MarginContainer/HBoxContainer/Options/MarginContainer/VBoxContainer/NewProjectButton.button.connect("pressed", self, "_on_new_project_button_pressed")

###############################################################################
# Connections                                                                 #
###############################################################################

func _on_new_project_button_pressed() -> void:
	AppManager.change_screen(PROJECT_SCREEN_PATH)

###############################################################################
# Private functions                                                           #
###############################################################################

func _load_defaults() -> void:
	pass

func _load_from_data(data: Dictionary) -> void:
	pass

###############################################################################
# Public functions                                                            #
###############################################################################

func load_data(data: Dictionary) -> void:
	# Intentionally skipped
	pass
