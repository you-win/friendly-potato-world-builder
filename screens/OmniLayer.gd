extends CanvasLayer

onready var omni_button_container: MarginContainer = $OmniButtonContainer

var is_super_pressed: bool = false

###############################################################################
# Builtin functions                                                           #
###############################################################################

func _ready() -> void:
	pass

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("super"):
		is_super_pressed = true
	elif event.is_action_released("super"):
		is_super_pressed = false
	elif (is_super_pressed and event.is_action_pressed("hide_omni_button")):
		omni_button_container.visible = not omni_button_container.visible

###############################################################################
# Connections                                                                 #
###############################################################################

###############################################################################
# Private functions                                                           #
###############################################################################

###############################################################################
# Public functions                                                            #
###############################################################################


