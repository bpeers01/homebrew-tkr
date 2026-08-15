# homebrew-tkr

Homebrew tap for [`tkr`](https://github.com/bpeers01/tkr) — a token-efficient
CLI proxy that filters and compresses command output for LLM agents.

Binaries are published by [bpeers01/tkr-releases](https://github.com/bpeers01/tkr-releases).

## Install

```bash
brew tap bpeers01/tkr
brew install bpeers01/tkr/tkr
```

Or in one line:

```bash
brew install bpeers01/tkr/tkr
```

(Homebrew auto-taps when you reference `<user>/<tap>/<formula>`.)

## Upgrade

```bash
brew upgrade tkr
```

## Supported platforms

- macOS (Apple Silicon / Intel)
- Linux (Linuxbrew, x86_64)

## Formula freshness

`Formula/tkr.rb` is checked daily against the latest
[tkr-releases](https://github.com/bpeers01/tkr-releases/releases/latest)
release by `.github/workflows/update-formula.yml`. If the pinned version and
sha256 values fall behind, that workflow opens a PR against this repo with
the bump — see the workflow file for details.
