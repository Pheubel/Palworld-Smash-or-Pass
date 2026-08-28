extends Control

const PAL_CONTAINER = preload("uid://birnnwcbd53ey")

@export_custom(0, "scene") var main_scene: String

@onready var result_label: Label = %ResultLabel
@onready var copy_to_clipboard_button: Button = %CopyToClipboardButton
@onready var pal_container_list: VBoxContainer = %PalContainerList
@onready var main_back_button: Button = %MainBackButton

@onready var result_overlay: Control = %ResultOverlay
@onready var result_outside_button: Button = %ResultOutsideButton
@onready var result_exit_button: Button = %ResultExitButton
@onready var result_text: TextEdit = %ResultText



func _ready() -> void:
	rebuild_pal_container_list()
	
	connect_signals()
	
	var smash_count := PersistantData.smashed_pals.size()
	result_label.text = tr_n(&"smashed %d pal", &"smashed %d pals", smash_count) % smash_count
	
	result_text.text = create_share_string()


func connect_signals() -> void:
	copy_to_clipboard_button.pressed.connect(_on_copy_to_clipboard_pressed)
	main_back_button.pressed.connect(_on_main_back_pressed)
	
	result_outside_button.pressed.connect(_on_overlay_close_requested)
	result_exit_button.pressed.connect(_on_overlay_close_requested)


func rebuild_pal_container_list() -> void:
	# clean up list
	for child in pal_container_list.get_children():
		child.queue_free()
	
	# fill list with favorited pals
	var favorited_pals = PersistantData.smashed_pals.duplicate()
	favorited_pals.sort_custom(PalResource.sort_index)
	
	for pal in favorited_pals:
		var pal_container := PAL_CONTAINER.instantiate() as PalContainer
		
		pal_container.prepare(pal)
		pal_container.pressed.connect(_on_pal_container_pressed.bind(pal))
		
		pal_container_list.add_child(pal_container)


func create_share_string() -> String:
	var smash_count := PersistantData.smashed_pals.size()
	
	var share_string: String
	
	if smash_count > 0:
		share_string = tr_n(&"I would smash %d pal:", &"I would smash %d pals:", smash_count) % smash_count
		
		var smashed_pals: Array[PalResource] = PersistantData.smashed_pals
		smashed_pals.sort_custom(PalResource.sort_index)
		
		for pal in smashed_pals:
			share_string += "\n" + pal.get_translated_name()
	else:
		share_string = tr(&"I would smash no pals.")
	
	return share_string


#region Signal Callbacks

func _on_main_back_pressed() -> void:
	get_tree().change_scene_to_file(main_scene)


func _on_pal_container_pressed(pal: PalResource) -> void:
	#TODO: show specifically one pal to inspect it.
	print(pal)


func _on_copy_to_clipboard_pressed() -> void:
	DisplayServer.clipboard_set(result_text.text)
	result_overlay.show()


func _on_overlay_close_requested() -> void:
	result_overlay.hide()

#endregion
