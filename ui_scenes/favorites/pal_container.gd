class_name PalContainer
extends PanelContainer

signal pressed


@onready var pal_icon: TextureRect = %PalIcon
@onready var pal_name_label: Label = %PalNameLabel


func prepare(pal: PalResource) -> void:
	if not is_node_ready():
		await ready
	
	pal_icon.texture = pal.visual
	pal_name_label.text = "%d%s: %s" % [pal.paldex_entry, pal.get_species_variant_string(), pal.resource_name] 


func _on_button_pressed() -> void:
	pressed.emit()
