class_name PalContainer
extends PanelContainer

signal pressed

const INSPECT_PAL_SCENE = preload("uid://bt20nqxbax1sy")

@onready var pal_icon: TextureRect = %PalIcon
@onready var pal_name_label: Label = %PalNameLabel

var _pal: PalResource

func prepare(pal: PalResource) -> void:
	_pal = pal
	
	if not is_node_ready():
		await ready
	
	pal_icon.texture = pal.visual
	pal_name_label.text = "%d%s: %s" % [pal.paldex_entry, pal.get_species_variant_string(), pal.get_translated_name()] 


func _on_button_pressed() -> void:
	pressed.emit()
	
	var inspect_pal_scene := INSPECT_PAL_SCENE.instantiate()
	inspect_pal_scene.current_pal = _pal
	inspect_pal_scene.exit_requested.connect(inspect_pal_scene.queue_free)
	
	get_tree().root.add_child(inspect_pal_scene)
