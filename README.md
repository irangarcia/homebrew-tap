# irangarcia Homebrew tap

Homebrew formulae maintained by [Iran Garcia](https://github.com/irangarcia).

## agentwho

Automatically uses the correct Claude and Codex account for every project.

```sh
brew install irangarcia/tap/agentwho
```

Project: [irangarcia/agentwho](https://github.com/irangarcia/agentwho)

After installation, run:

```sh
agentwho init
```

## codex-swap

Safely switch between named Codex CLI accounts.

```sh
brew install irangarcia/tap/codex-swap
```

Project: [irangarcia/codex-swap](https://github.com/irangarcia/codex-swap)

Upgrade an existing installation:

```sh
brew upgrade codex-swap
```

You can also tap this repository explicitly:

```sh
brew tap irangarcia/tap
brew install codex-swap
```

In a `Brewfile`:

```ruby
tap "irangarcia/tap"
brew "codex-swap"
```
