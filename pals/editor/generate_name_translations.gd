@tool
## A script that takes the pa definitions and generates a fresh CSV file
## that can be filled with translations. DANGER: This will destroy old translations!
extends EditorScript

const DEFINITION_DIR: String = "res://pals/definitions/"
const OUTPUT_FILE := "res://i10n/pal_names.csv"


func _run() -> void:
	var name_file := FileAccess.open(OUTPUT_FILE, FileAccess.WRITE)
	if name_file == null:
		push_error(error_string(FileAccess.get_open_error()))
		return
	
	name_file.store_csv_line(["keys", "en", "ja"])
	
	for file in DirAccess.get_files_at(DEFINITION_DIR):
		var pal_definition := load(DEFINITION_DIR.path_join(file)) as PalResource
		
		name_file.store_csv_line([pal_definition.translation_key, pal_definition.resource_name])
	
	name_file.close()
