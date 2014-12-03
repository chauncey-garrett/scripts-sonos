//
// Search
//

Sonos = Application('Sonos')
Sonos.activate()

delay(1)

SystemEvents = Application('System Events')
SonosUI = SystemEvents.processes['Sonos']

SystemEvents.keystroke('f', {
		using: 'option down',
		using: 'command down',
	})
