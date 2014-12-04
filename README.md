# Scripts for SONOS

This is a stop-gap collection of scripts (including AppleScripts) for the SONOS OS X controller. Whether or not AppleScript will ever officially be supported by SONOS is up in the air. Since most of what can be done is limited by GUI scripting, these scripts can easily break, further implementation is limited, and are overall very hacky.

At this point, there are scripts that can do the following:

- Play/Pause
- Volume Up
- Volume Down
- Mute

# Installation

Fork the repo and clone to your desired location.

```
git clone https://github.com/chauncey-garrett/scripts-sonos
```

If you plan on contributing back to the repository, add the following to `.git/config` **before making any commits.** This code will ensure that the AppleScripts are viewable under version control by decompiling them to plain text before updating the repository.

```
[filter "ascr"]
	clean = "$(git rev-parse --show-toplevel)"/git-ascr-filter.sh --clean %f
	smudge = "$(git rev-parse --show-toplevel)"/git-ascr-filter.sh --smudge %f
```

## Like it?

If you have feature suggestions, please open an [issue](https://github.com/chauncey-garrett/scripts-sonos/issues "chauncey-garrett/scripts-sonos/issues"). If you have contributions, open a [pull request](https://github.com/chauncey-garrett/scripts-sonos/pull-request "chauncey-garrett/scripts-sonos/pulls"). I'd love to expand this library as much as is possible.

## Author(s)

*The author(s) of this module should be contacted via the [issue tracker](https://github.com/chauncey-garrett/scripts-sonos/issues "chauncey-garrett/scripts-sonos/issues").*

  - [Chauncey Garrett](https://github.com/chauncey-garrett "chauncey-garrett")

[![](/img/tip.gif)](http://chauncey.io/about/index.html#tip)
