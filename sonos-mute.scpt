--
-- Mute
--

tell application "System Events"
    tell process "Sonos"
        click button 1 of window 1
    end tell
end tell
