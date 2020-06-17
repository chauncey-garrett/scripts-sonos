--
-- Play/Pause
--

tell application "System Events"
    tell process "Sonos S1 Controller"
        click button 2 of window 1
    end tell
end tell
