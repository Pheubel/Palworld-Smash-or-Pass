class_name PalResource
extends Resource

## The image render of the pal.
@export var visual: Texture2D
## The link to other (erotic) works of this pal. If it has not gotten any entries,
## the field is left blank.
@export var e621_link: String
## The index at which the pal is located in the paldex.
@export var paldex_entry: int
## The subspecies variant of the pal. 0 means that it is the main species.
@export var species_variant: int
## The translation key used to determine the display name for the pal.
@export var translation_key: StringName

## Returns the species variant as an uppercase character. If the pal
## is the main specie, an empty string is returned.
func get_species_variant_string() -> String:
	if species_variant == 0:
		return ""
	else:
		return char(65 + species_variant)


## Returns the pal's name for the current language.
func get_translated_name() -> String:
	return tr(translation_key)
