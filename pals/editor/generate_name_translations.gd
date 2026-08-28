@tool
## A script that takes the pa definitions and generates a fresh CSV file
## that can be filled with translations. DANGER: This will destroy old translations!
extends EditorScript

const DEFINITION_DIR: String = "res://pals/definitions/"
const OUTPUT_POT: String = "res://i10n/pal_names.pot"

func _run() -> void:
	var pot_file := FileAccess.open(OUTPUT_POT, FileAccess.WRITE)
	if pot_file == null:
		push_error(error_string(FileAccess.get_open_error()))
		return
	
	for file in DirAccess.get_files_at(DEFINITION_DIR):
		var pal_definition := load(DEFINITION_DIR.path_join(file)) as PalResource
		
		if not pal_definition:
			push_error("could not load '%s' as PalResource" % file)
			continue
		
		#NOTE: this intermediate step is needed to avoid an editor crash
		var translation_key: String = pal_definition.translation_key
		
		pot_file.store_line("msgid \"%s\"" % translation_key)
		pot_file.store_line("msgstr \"\"")
		pot_file.store_line("")
	
	pot_file.close()
