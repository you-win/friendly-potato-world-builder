class_name BaseScreen
extends Node2D

###############################################################################
# Builtin functions                                                           #
###############################################################################

func _ready() -> void:
	# Try to avoid race between previous screen being deleted and this screen being created
	while true:
		if AppManager.current_screen:
			yield(get_tree(), "idle_frame")
		else:
			break
	AppManager.current_screen = self

###############################################################################
# Connections                                                                 #
###############################################################################

###############################################################################
# Private functions                                                           #
###############################################################################

###############################################################################
# Public functions                                                            #
###############################################################################

func load_data(data: Dictionary) -> void:
	AppManager.log_message("load_data(...) not implemented for %s" % self.name)
