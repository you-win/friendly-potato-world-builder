extends Node

signal message_logged(message)

var sdu: SaveDataUtil = SaveDataUtil.new()

var current_save_data: Dictionary

var current_screen: BaseScreen

###############################################################################
# Builtin functions                                                           #
###############################################################################

func _ready() -> void:
	# Always try to restore from backup
	current_save_data = load_data()

###############################################################################
# Connections                                                                 #
###############################################################################

###############################################################################
# Private functions                                                           #
###############################################################################

###############################################################################
# Public functions                                                            #
###############################################################################

func change_screen(screen_path: String, data: Dictionary = Dictionary()) -> void:
	var screen: BaseScreen = load(screen_path).instance()
	current_screen.queue_free()
	yield(get_tree(), "idle_frame")
	get_tree().root.add_child(screen)
	if not data.empty():
		screen.load_data(data)

func log_message(message: String, is_error: bool = false) -> void:
	if is_error:
		message = "[ERROR] %s" % message
		assert(false, message)
	print(message)
	emit_signal("message_logged", message)

func does_metadata_exist() -> bool:
	return sdu.does_metadata_exist()

func load_data(path: String = "") -> Dictionary:
	"""
	Wrapper around SaveDataUtil.load_data(...)
	
	defaults to metadata value if empty string is passed
	"""
	return sdu.load_data(path)

func save_data(data: Dictionary) -> void:
	"""
	Wrapper around SaveDataUtil.save_data(...)
	"""
	sdu.save_data(data)
