extends MenuButton

signal option_selected(text)

onready var popup: PopupMenu = get_popup()

###############################################################################
# Builtin functions                                                           #
###############################################################################

func _ready() -> void:
	popup.add_stylebox_override("panel", load("res://assets/PotatoNormal.tres"))
	popup.add_stylebox_override("hover", load("res://assets/PotatoHover.tres"))
	popup.connect("index_pressed", self, "_on_index_pressed")

###############################################################################
# Connections                                                                 #
###############################################################################

func _on_index_pressed(index: int) -> void:
	emit_signal("option_selected", popup.get_item_text(index))

###############################################################################
# Private functions                                                           #
###############################################################################

###############################################################################
# Public functions                                                            #
###############################################################################

func connect_to_popup(target: Node, function_name: String) -> void:
	connect("option_selected", target, function_name)
