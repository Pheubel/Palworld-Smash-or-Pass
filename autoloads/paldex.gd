extends Node

const DEFINITION_DIR: String = "res://pals/definitions/"


var pals: Array[PalResource] = []
var _pal_name_lookup: Dictionary[String, PalResource] = {}


func _ready() -> void:
	load_pals()


func get_pal(pal_name: String) -> PalResource:
	return _pal_name_lookup.get(pal_name)


#NOTE: This is a naive way to do it, it should ideally be done async
func load_pals() -> void:
	var pal_definition_files := DirAccess.get_files_at(DEFINITION_DIR)
	
	pals.resize(pal_definition_files.size())
	
	for index in pal_definition_files.size():
		var pal_definition_file := DEFINITION_DIR.path_join(pal_definition_files[index])
		
		var pal_definition := ResourceLoader.load(pal_definition_file, "PalResource") as PalResource
		if not pal_definition:
			push_error("failed to load '%s'" % pal_definition_file)
			continue
		
		pals[index] = pal_definition
		_pal_name_lookup.set(pal_definition.resource_name, pal_definition)
