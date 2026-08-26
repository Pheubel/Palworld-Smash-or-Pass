extends Control

@export_custom(0, "scene") var main_scene: String

@onready var favorite_button: TextureButton = %FavoriteButton
@onready var smash_button: Button = %SmashButton
@onready var pass_button: Button = %PassButton
@onready var e621_button: TextureButton = %E621Button
@onready var pal_texture_rect: TextureRect = %PalTextureRect
@onready var pal_index_label: Label = %PalIndexLabel
@onready var pal_name_label: Label = %PalNameLabel
@onready var back_button: Button = %BackButton

var pal_queue: Array[PalResource]
var current_pal: PalResource


func _ready() -> void:
	connect_signals()
	
	pal_queue = Paldex.pals.duplicate()
	if PersistantData.shuffle_pals:
		pal_queue.shuffle()
	
	if not PersistantData.show_booru:
		get_tree().call_group(&"booru_button", &"hide")
	
	next_pal()


func connect_signals() -> void:
	favorite_button.toggled.connect(_on_favorite_toggled)
	e621_button.pressed.connect(_on_e621_pressed)
	smash_button.pressed.connect(_on_smash_pressed)
	pass_button.pressed.connect(_on_pass_pressed)
	back_button.pressed.connect(_on_back_pressed)
	
	favorite_button.mouse_entered.connect(favorite_button.grab_focus, CONNECT_DEFERRED)
	e621_button.mouse_entered.connect(e621_button.grab_focus, CONNECT_DEFERRED)
	smash_button.mouse_entered.connect(smash_button.grab_focus, CONNECT_DEFERRED)
	pass_button.mouse_entered.connect(pass_button.grab_focus, CONNECT_DEFERRED)
	
	favorite_button.mouse_exited.connect(favorite_button.release_focus)
	e621_button.mouse_exited.connect(e621_button.release_focus)
	smash_button.mouse_exited.connect(smash_button.release_focus)
	pass_button.mouse_exited.connect(pass_button.release_focus)


func disconnect_signals() -> void:
	favorite_button.toggled.disconnect(_on_favorite_toggled)
	e621_button.pressed.disconnect(_on_e621_pressed)
	smash_button.pressed.disconnect(_on_smash_pressed)
	pass_button.pressed.disconnect(_on_pass_pressed)
	
	favorite_button.mouse_entered.disconnect(favorite_button.grab_focus)
	e621_button.mouse_entered.disconnect(e621_button.grab_focus)
	smash_button.mouse_entered.disconnect(smash_button.grab_focus)
	pass_button.mouse_entered.disconnect(pass_button.grab_focus)
	
	favorite_button.mouse_exited.disconnect(favorite_button.release_focus)
	e621_button.mouse_exited.disconnect(e621_button.release_focus)
	smash_button.mouse_exited.disconnect(smash_button.release_focus)
	pass_button.mouse_exited.disconnect(pass_button.release_focus)


## Takes the next pal in the queue and assigns it to current_pal, returning if
## there was a pal to be taken from the queue. If the queue is empty, false is returned.
func next_pal() -> bool:
	current_pal = pal_queue.pop_front()
	if not current_pal:
		print("Queue is empty")
		return false
	
	# set up pal visuals
	pal_texture_rect.texture = current_pal.visual
	pal_index_label.text = "%d%s:" % [current_pal.paldex_entry, current_pal.get_species_variant_string()]
	pal_name_label.text = current_pal.get_translated_name()
	
	# handle how the e621 button should act
	e621_button.disabled = current_pal.e621_link.is_empty()
	e621_button.focus_mode = FocusMode.FOCUS_NONE if e621_button.disabled else FocusMode.FOCUS_ALL
	
	# set favorite button to saved state
	favorite_button.button_pressed = PersistantData.favorite_pals.has(current_pal.resource_name)  
	
	return true


#region Signal Callbacks


func _on_favorite_toggled(is_favorited: bool) -> void:
	assert(current_pal)
	
	if is_favorited:
		PersistantData.add_favorite(current_pal)
	else:
		PersistantData.remove_favorite(current_pal)


func _on_e621_pressed() -> void:
	assert(current_pal)
	
	if not current_pal.e621_link.is_empty():
		OS.shell_open(current_pal.e621_link)


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file(main_scene)


func _on_smash_pressed() -> void:
	_on_rating_pressed()


func _on_pass_pressed() -> void:
	_on_rating_pressed()


func _on_rating_pressed() -> void:
	if next_pal():
		return
	
	_on_queue_finished()


func _on_queue_finished() -> void:
	get_tree().set_group(&"clickable", "focus_mode", FocusMode.FOCUS_NONE)
	get_tree().set_group(&"clickable", "mouse_filter", MouseFilter.MOUSE_FILTER_IGNORE)
	
	disconnect_signals()
	
	print("it's done, go to the next scene")
	# TODO: instead of going directly to the main menu, show a list of all smashed pals.
	get_tree().change_scene_to_file(main_scene)

#endregion
