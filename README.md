# maging-studio/homebrew-tap

Homebrew casks for [Maging Studio](https://github.com/maging-studio) apps.

## Glance

A native Markdown viewer and Quick Look extension for macOS —
[glance.md](https://glance.md).

```sh
brew tap maging-studio/tap
brew install glance
```

Or in one line, without tapping first:

```sh
brew install maging-studio/tap/glance
```

Upgrades come through Homebrew like anything else:

```sh
brew upgrade glance
```

Glance also updates itself in the background. If you'd rather Homebrew stayed
the only thing that touches it, turn that off in Glance's Settings (⌘,) under
*Check for Updates Automatically*.

### What gets installed

`Glance.app` into `/Applications`, from the notarized DMG published on the
[Glance releases page](https://github.com/maging-studio/glance/releases). The
Quick Look extension ships inside the app bundle — macOS registers it on first
launch, so open Glance once after installing and Finder's Space-bar preview
starts rendering Markdown.

To remove everything, including preferences and caches:

```sh
brew uninstall --zap glance
```

## Issues

Bugs and feature requests for Glance itself belong on
[maging-studio/glance](https://github.com/maging-studio/glance/issues).
Use this repository's issues only for packaging problems — a bad checksum, a
failed download, a wrong version.
