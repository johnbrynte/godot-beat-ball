extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var lastBeat = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	$loop.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var pos = floor($loop.get_playback_position() * 2)
	if pos != lastBeat:
		lastBeat = pos
		$beat.play("beat")
