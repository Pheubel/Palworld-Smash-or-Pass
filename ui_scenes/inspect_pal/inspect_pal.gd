extends Control

signal exit_requested

@onready var favorite_button: TextureButton = %FavoriteButton
@onready var e621_button: TextureButton = %E621Button
@onready var pal_texture_rect: TextureRect = %PalTextureRect
@onready var pal_index_label: Label = %PalIndexLabel
@onready var pal_name_label: Label = %PalNameLabel
@onready var back_button: Button = %BackButton


var current_pal: PalResource: set = set_current_pal


func _ready() -> void:
	connect_signals()
	
	if not PersistantData.show_booru:
		get_tree().call_group(&"booru_button", &"hide")


func connect_signals() -> void:
	favorite_button.toggled.connect(_on_favorite_toggled)
	e621_button.pressed.connect(_on_e621_pressed)
	back_button.pressed.connect(exit_requested.emit)
	
	favorite_button.mouse_entered.connect(favorite_button.grab_focus, CONNECT_DEFERRED)
	e621_button.mouse_entered.connect(e621_button.grab_focus, CONNECT_DEFERRED)
	
	favorite_button.mouse_exited.connect(favorite_button.release_focus)
	e621_button.mouse_exited.connect(e621_button.release_focus)


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


func set_current_pal(pal: PalResource) -> void:
	current_pal = pal
	
	if not is_node_ready():
		await ready
	
	if pal == null:
		pal_texture_rect.texture = null
		pal_index_label.text = ""
		pal_name_label.text = ""
		
		e621_button.disabled = true
		favorite_button.disabled = true
		return
	
	# set up pal visuals
	pal_texture_rect.texture = pal.visual
	pal_index_label.text = "%d%s:" % [pal.paldex_entry, pal.get_species_variant_string()]
	pal_name_label.text = pal.get_translated_name()
	
	# handle how the e621 button should act
	e621_button.disabled = pal.e621_link.is_empty()
	e621_button.mouse_default_cursor_shape = CursorShape.CURSOR_ARROW if e621_button.disabled else CursorShape.CURSOR_POINTING_HAND
	e621_button.focus_mode = FocusMode.FOCUS_NONE if e621_button.disabled else FocusMode.FOCUS_ALL
	
	# set favorite button to saved state
	favorite_button.disabled = false
	favorite_button.button_pressed = PersistantData.favorite_pals.has(pal.resource_name)  
