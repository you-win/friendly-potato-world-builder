class_name InputToInput
extends BaseHboxElement

onready var left_line_edit: LineEdit = $MarginContainer/HBoxContainer/LeftLineEdit
onready var right_line_edit: LineEdit = $MarginContainer/HBoxContainer/RightLineEdit

###############################################################################
# Builtin functions                                                           #
###############################################################################

###############################################################################
# Connections                                                                 #
###############################################################################

###############################################################################
# Private functions                                                           #
###############################################################################

###############################################################################
# Public functions                                                            #
###############################################################################

func load(data: Dictionary) -> void:
	left_line_edit.text = data["left_line_edit"]
	right_line_edit.text = data["right_line_edit"]

func save() -> Dictionary:
	return {
		"left_line_edit": left_line_edit.text,
		"right_line_edit": right_line_edit.text
	}
