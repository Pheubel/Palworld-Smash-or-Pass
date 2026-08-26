extends Control

const PAL_CONTAINER = preload("uid://birnnwcbd53ey")

@export_custom(0, "scene") var main_scene: String

@onready var main_back_button: Button = %MainBackButton
@onready var pal_container_list: VBoxContainer = %PalContainerList


func _ready() -> void:
	rebuild_pal_container_list()
	
	connect_signals()


func connect_signals() -> void:
	main_back_button.pressed.connect(_on_main_back_pressed)


func rebuild_pal_container_list() -> void:
	# clean up list
	for child in pal_container_list.get_children():
		child.queue_free()
	
	# fill list with favorited pals
	for pal in PersistantData.favorite_pals:
		var pal_container := PAL_CONTAINER.instantiate() as PalContainer
		var pal_definition := PersistantData.favorite_pals[pal]
		
		pal_container.prepare(pal_definition)
		pal_container.pressed.connect(_on_pal_container_pressed.bind(pal_definition))
		
		pal_container_list.add_child(pal_container)


func _on_main_back_pressed() -> void:
	get_tree().change_scene_to_file(main_scene)


func _on_pal_container_pressed(pal: PalResource) -> void:
	#TODO: show specifically one pal to inspect it.
	print(pal)
