extends CanvasLayer

const OMNI_BUTTON_OPEN_TEXT: String = "+"
const OMNI_BUTTON_CLOSE_TEXT: String = "-"

onready var control: Control = $Control

onready var omni_button_container: MarginContainer = $Control/OmniButtonContainer
onready var omni_button: Button = $Control/OmniButtonContainer/OmniButton
var is_omni_button_open: bool = false

onready var omni_option_container: MarginContainer = $Control/OmniOptionContainer

onready var menu_hbox: HBoxContainer = $Control/OmniMenuContainer/MenuHBox

var is_super_pressed: bool = false

###############################################################################
# Builtin functions                                                           #
###############################################################################

func _ready() -> void:
	omni_button.connect("pressed", self, "_on_omni_button_pressed")
	
	for b in menu_hbox.get_children():
		b.connect_to_popup(self, "_on_menu_option_pressed")

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("super"):
		is_super_pressed = true
	elif event.is_action_released("super"):
		is_super_pressed = false
	elif (is_super_pressed and event.is_action_pressed("hide_omni_button")):
		control.visible = not control.visible
		

###############################################################################
# Connections                                                                 #
###############################################################################

func _on_omni_button_pressed() -> void:
	if is_omni_button_open:
		omni_option_container.visible = false
		is_omni_button_open = false
		omni_button.text = OMNI_BUTTON_OPEN_TEXT
	else:
		omni_option_container.visible = true
		is_omni_button_open = true
		omni_button.text = OMNI_BUTTON_CLOSE_TEXT

func _on_menu_option_pressed(menu_text: String) -> void:
	match menu_text:
		"New":
			AppManager.log_message("%s not yet implemented" % menu_text)
		"Save":
			AppManager.log_message("%s not yet implemented" % menu_text)
		"Load":
			AppManager.log_message("%s not yet implemented" % menu_text)
		"Stats":
			AppManager.log_message("%s not yet implemented" % menu_text)

###############################################################################
# Private functions                                                           #
###############################################################################

###############################################################################
# Public functions                                                            #
###############################################################################


