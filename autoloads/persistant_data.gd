extends Node

const DATA_FILE: String = "user://data.ini"
const DEBOUNCE_TIME: float = 3.0

var favorite_pals: Dictionary[String, PalResource] = {}
var show_booru: bool = true: set = set_show_booru
var shuffle_pals: bool = false: set = set_shuffle_pals

var smashed_pals: Array[PalResource] = []

var _config: ConfigFile = ConfigFile.new()
var _debounce_timer: Timer = Timer.new()


func _ready() -> void:
	_debounce_timer.autostart = false
	_debounce_timer.one_shot = true
	_debounce_timer.ignore_time_scale = true
	_debounce_timer.timeout.connect(_config.save.bind(DATA_FILE))
	add_child(_debounce_timer)
	
	_config.load(DATA_FILE)
	
	show_booru = _config.get_value("Settings", "show_booru", show_booru)
	shuffle_pals = _config.get_value("Settings", "shuffle_pals", shuffle_pals)
	
	if not Paldex.is_node_ready():
		push_error("Expected paldex to be ready before this node. Please make sure it is loaded first")
		return
	else:
		var favorited_pals := _config.get_value("Pals", "favorites", []) as Array
		
		for pal: String in favorited_pals:
			favorite_pals.set(pal, Paldex.get_pal(pal))


func _notification(what: int) -> void:
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		_config.save(DATA_FILE)


func add_favorite(pal: PalResource) -> void:
	favorite_pals.set(pal.resource_name, pal)
	_config.set_value("Pals", "favorites", favorite_pals.keys())
	queue_save()


func remove_favorite(pal: PalResource) -> void:
	favorite_pals.erase(pal.resource_name)
	_config.set_value("Pals", "favorites", favorite_pals.keys())
	queue_save()


func set_show_booru(state: bool) -> void:
	if state != show_booru:
		queue_save()
	
	show_booru = state
	_config.set_value("Settings", "show_booru", show_booru)


func set_shuffle_pals(state: bool) -> void:
	if state != shuffle_pals:
		queue_save()
	
	shuffle_pals = state
	_config.set_value("Settings", "shuffle_pals", shuffle_pals)


func queue_save() -> void:
	_debounce_timer.start(DEBOUNCE_TIME)
