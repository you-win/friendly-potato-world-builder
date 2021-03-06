class_name BaseElement
extends Control

###############################################################################
# Builtin functions                                                           #
###############################################################################

func _ready() -> void:
	pass

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
	AppManager.log_message("load(...) not implemented for %s" % self.name, true)

func save() -> Dictionary:
	AppManager.log_message("save() not implemented for %s" % self.name, true)
	return {}
