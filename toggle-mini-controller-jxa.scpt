//
// Toggle Mini Controller
//

Sonos = Application('Sonos')
Sonos.activate()

delay(1)

SystemEvents = Application('System Events')
SonosUI = SystemEvents.processes['Sonos']

SystemEvents.keystroke('d', {
		using: 'command down',
	})
