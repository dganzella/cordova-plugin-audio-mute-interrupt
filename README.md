# cordova-plugin-audio-mute-interrupt

A simple plugin for completely muting the app upon siri or call interruption.

The iOS device mutes the app for the current audios playing,
but if some other audio is to be played on the cordova webview while siri or calls are open,
it ends up playing on top of siri. This app solves this issue by muting the app completely when app is interrupted by siri or a call, and then
unmutes upon interruption end.

Installing:

cordova plugin add https://github.com/dganzella/cordova-plugin-audio-mute-interrupt