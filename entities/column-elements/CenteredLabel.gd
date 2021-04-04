class_name CenteredLabel
extends BaseElement

export var label_text: String

onready var label: Label = $MarginContainer/Label

###############################################################################
# Builtin functions                                                           #
###############################################################################

func _ready() -> void:
	if label_text:
		label.text = label_text

###############################################################################
# Connections                                                                 #
###############################################################################

###############################################################################
# Private functions                                                           #
###############################################################################

###############################################################################
# Public functions                                                            #
###############################################################################

