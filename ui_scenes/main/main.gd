extends Control

@export_custom(0, "scene") var judging_scene: String
@export_custom(0, "scene") var favorites_scene: String

@onready var menu_container: VBoxContainer = %MenuContainer
@onready var start_button: Button = %StartButton
@onready var favorites_button: Button = %FavoritesButton
@onready var settings_button: Button = %SettingsButton
@onready var exit_button: Button = %ExitButton

@onready var settings_menu_container: VBoxContainer = %SettingsMenuContainer
@onready var show_booru_button: CheckButton = %ShowBooruButton
@onready var shuffle_pals_button: CheckButton = %ShufflePalsButton
@onready var back_button: Button = %BackButton

@onready var version_label: Label = %VersionLabel
@onready var github_button: Button = %GithubButton

func _ready() -> void:
	show_booru_button.set_pressed_no_signal(PersistantData.show_booru)
	shuffle_pals_button.set_pressed_no_signal(PersistantData.shuffle_pals)
	
	connect_signals()
	
	version_label.text = "Version: %s" % ProjectSettings.get_setting("application/config/version") as String
	
	if OS.get_name() == "Web":
		exit_button.queue_free()


func connect_signals() -> void:
	start_button.pressed.connect(_on_start_pressed)
	favorites_button.pressed.connect(_on_favorites_pressed)
	settings_button.pressed.connect(_on_settings_pressed)
	exit_button.pressed.connect(_on_exit_pressed)
	show_booru_button.toggled.connect(_on_show_booru_toggled)
	shuffle_pals_button.toggled.connect(_on_shuffle_pals_toggled)
	back_button.pressed.connect(_on_back_pressed)
	github_button.pressed.connect(_on_github_pressed)


#region Signal Callbacks


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file(judging_scene)


func _on_favorites_pressed() -> void:
	get_tree().change_scene_to_file(favorites_scene)


func _on_settings_pressed() -> void:
	menu_container.hide()
	settings_menu_container.show()


func _on_exit_pressed() -> void:
	get_tree().root.propagate_notification(NOTIFICATION_WM_CLOSE_REQUEST)
	get_tree().quit()


func _on_show_booru_toggled(state: bool) -> void:
	PersistantData.show_booru = state


func _on_shuffle_pals_toggled(state: bool) -> void:
	PersistantData.shuffle_pals = state


func _on_back_pressed() -> void:
	settings_menu_container.hide()
	menu_container.show()


func _on_github_pressed() -> void:
	OS.shell_open("https://github.com/Pheubel/Palworld-Smash-or-Pass")


#endregion
