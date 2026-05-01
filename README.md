# Endara Homebrew Tap

The official Homebrew tap for [Endara](https://github.com/endara-ai) — the local-first MCP tool aggregator and its desktop tray app.

This tap distributes:

| Name | Type | Source repository |
| --- | --- | --- |
| `endara` | Cask (desktop tray app, macOS) | [endara-ai/endara-desktop](https://github.com/endara-ai/endara-desktop) |
| `endara-relay` | Formula (MCP aggregator binary, macOS + Linux) | [endara-ai/endara-relay](https://github.com/endara-ai/endara-relay) |

> **Heads up:** The Cask and Formula files in this repo are managed automatically by CI in the source repositories. Each `v*` tag pushed to `endara-relay` or `endara-desktop` triggers a release workflow that commits an update here with new URLs and SHA256 checksums. Please do **not** hand-edit `Casks/endara.rb` or `Formula/endara-relay.rb` — your changes will be overwritten on the next release. If you need to fix something, open an issue or PR against the source repo.

## Installation

First, tap this repository:

```bash
brew tap endara-ai/tap
```

### Desktop tray app (macOS)

```bash
brew install --cask endara
```

This installs the Endara tray app, which manages a local relay process for you. After installation, launch **Endara** from `/Applications` or Spotlight.

### Relay binary only (macOS + Linux)

If you only want the headless MCP aggregator binary:

```bash
brew install endara-ai/tap/endara-relay
```

This installs the `endara-relay` command-line tool. Run `endara-relay --help` to get started.

## Upgrading

```bash
brew update
brew upgrade --cask endara
brew upgrade endara-ai/tap/endara-relay
```

## Uninstallation

```bash
# Desktop
brew uninstall --cask endara

# Relay
brew uninstall endara-ai/tap/endara-relay

# Remove the tap entirely
brew untap endara-ai/tap
```

## Reporting issues

This repo only hosts auto-generated package definitions; the actual code lives in the source repositories. Please file bug reports and feature requests there:

- Desktop app: [endara-ai/endara-desktop/issues](https://github.com/endara-ai/endara-desktop/issues)
- Relay binary: [endara-ai/endara-relay/issues](https://github.com/endara-ai/endara-relay/issues)

If a release somehow produced a broken Cask or Formula in this repo (e.g. a bad checksum or stale URL), open an issue on the corresponding source repo and we'll cut a fix release.

## License

The Cask and Formula definitions in this repository are released under the same Apache-2.0 license as the projects they package.

