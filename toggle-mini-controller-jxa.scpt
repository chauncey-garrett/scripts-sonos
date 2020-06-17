//
// Toggle Mini Controller
//

Sonos = Application('Sonos S1 Controller')
Sonos.activate()

delay(1)

SystemEvents = Application('System Events')
SonosUI = SystemEvents.processes['Sonos S1 Controller']

SystemEvents.keystroke('d', {
		using: 'command down',
	})
