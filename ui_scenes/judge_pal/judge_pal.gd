extends "res://ui_scenes/inspect_pal/inspect_pal.gd"

@export_custom(0, "scene") var main_scene: String
@export_custom(0, "scene") var result_scene: String

@onready var smash_button: Button = %SmashButton
@onready var pass_button: Button = %PassButton

var pal_queue: Array[PalResource]


func _ready() -> void:
	super._ready()
	
	pal_queue = Paldex.pals.duplicate()
	if PersistantData.shuffle_pals:
		pal_queue.shuffle()
	
	next_pal()


func connect_signals() -> void:
	super.connect_signals()
	
	exit_requested.connect(_on_exit_requested)
	smash_button.pressed.connect(_on_smash_pressed)
	pass_button.pressed.connect(_on_pass_pressed)


## Takes the next pal in the queue and assigns it to current_pal, returning if
## there was a pal to be taken from the queue. If the queue is empty, false is returned.
func next_pal() -> bool:
	current_pal = pal_queue.pop_front()
	if not current_pal:
		print("Queue is empty")
		return false
	
	## set up pal visuals
	#pal_texture_rect.texture = current_pal.visual
	#pal_index_label.text = "%d%s:" % [current_pal.paldex_entry, current_pal.get_species_variant_string()]
	#pal_name_label.text = current_pal.get_translated_name()
	#
	## handle how the e621 button should act
	#e621_button.disabled = current_pal.e621_link.is_empty()
	#e621_button.mouse_default_cursor_shape = CursorShape.CURSOR_ARROW if e621_button.disabled else CursorShape.CURSOR_POINTING_HAND
	#e621_button.focus_mode = FocusMode.FOCUS_NONE if e621_button.disabled else FocusMode.FOCUS_ALL
	#
	#
	## set favorite button to saved state
	#favorite_button.button_pressed = PersistantData.favorite_pals.has(current_pal.resource_name)  
	
	return true


func _on_exit_requested() -> void:
	get_tree().change_scene_to_file(main_scene)


func _on_smash_pressed() -> void:
	assert(current_pal)
	
	PersistantData.smashed_pals.append(current_pal)
	_on_rating_pressed()


func _on_pass_pressed() -> void:
	_on_rating_pressed()


func _on_rating_pressed() -> void:
	if next_pal():
		return
	
	_on_queue_finished()


func _on_queue_finished() -> void:
	get_tree().change_scene_to_file(result_scene)
