# Homebrew OCW

Homebrew tap for [OCW CLI](https://github.com/BenitoJD/OCW-CLI).

## Install

```bash
brew install BenitoJD/ocw/ocw
```

If Homebrew appears to hang after printing OCW metadata on macOS, install from
the verified GitHub Release while repairing local Homebrew/Xcode discovery:

```bash
curl -fsSL https://raw.githubusercontent.com/BenitoJD/OCW-CLI/main/scripts/install-release.sh | bash
ocw homebrew doctor
```

## Upgrade

```bash
brew update
brew upgrade ocw
```

## Verify

```bash
ocw version
ocw doctor --deep
```

OCW requires `opencode` on `PATH` for worker runs.
