local awful = require("awful")

function volup()
	awful.util.spawn("pulsemixer --change-volume +5 --max-volume 150")
end

function voldown()
	awful.util.spawn("pulsemixer --change-volume -5 --max-volume 150")
end

function volmute()
	awful.util.spawn("pulsemixer --toggle-mute")
end 

