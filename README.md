# Synopsis

I hate installing, configuring, and updating software on my computer. For example when I'm using a new machine, or sshing into a remote system. I've automated as much of that process as I can, keeping everything as lightweight as possible.

## Do everything

First set up an SSH key for GitHub, see steps 1 to 3 of [Cloning with SSH](#cloning-with-ssh), because the `dotfiles` step fetches this repository over SSH. Then configure and install everything:

```bash
cd && curl -LOks https://github.com/lexicalunit/dotfiles/tarball/master
tar xvzf master --strip 1 -C . && rm master
bin/equip -f all
```

## Usage

1. Clone this repository into your home directory, see [Cloning with SSH](#cloning-with-ssh).
1. Source your new environment by opening a new terminal or running [`. ~/.profile`](.profile).
1. Execute the command [`equip all`](bin/equip) to step through configuration of system settings, installation of applications, and creation of your complete developer environment.

You can also use the tool [`bin/deploy_dotfiles`](bin/deploy_dotfiles) to automatically export these settings to a remote machine.

## Cloning with SSH

Clone over SSH rather than HTTPS so that you can push changes back without entering credentials. The `equip dotfiles` step also expects `origin` to be `git@github.com:lexicalunit/dotfiles.git`. If you're using your own fork, substitute its URL below.

### 1. Create an SSH key

```bash
ssh-keygen -t ed25519 -C "you@example.com"
```

Accept the default location (`~/.ssh/id_ed25519`) and choose a passphrase.

### 2. Keep the passphrase in the macOS keychain

Add the following to `~/.ssh/config`, creating the file if it doesn't exist:

```text
Host github.com
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_ed25519
```

Then add the key to the ssh agent and the keychain:

```bash
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

### 3. Add the public key to GitHub

Copy the public key with `pbcopy < ~/.ssh/id_ed25519.pub` and paste it into a new key at <https://github.com/settings/ssh/new>. Or, if you have the GitHub CLI:

```bash
gh auth refresh -s admin:public_key
gh ssh-key add ~/.ssh/id_ed25519.pub --title "$(hostname)"
```

Check that it works; you should see `Hi <username>! You've successfully authenticated`:

```bash
ssh -T git@github.com
```

### 4. Clone into your home directory

`git clone` refuses to clone into a directory that isn't empty, and your home directory never is, so create the repository in place instead. Note that `checkout -f` overwrites any existing files that are also in this repository, such as `~/.zshrc`, so back up anything you want to keep first.

```bash
cd ~
git init
git remote add origin git@github.com:lexicalunit/dotfiles.git
git fetch origin master
git checkout -f -B master origin/master
git submodule update --init --recursive
```

If you used the tarball from [Do everything](#do-everything), running `equip dotfiles` does this step for you once your SSH key is set up. If you already have an HTTPS clone, switch it to SSH with:

```bash
git remote set-url origin git@github.com:lexicalunit/dotfiles.git
```

## Maintenance

- Your home directory is a git repository now! Track changes and commit updates as needed.
- There are some git hooks in [`env`](env) that generate certain files for you, including parts of this README.
- Re-run [`equip most`](bin/equip) periodically to update applications and configuration. Unlike `equip all` it skips the `osx` step, which resets system settings and the Dock.
- Add Homebrew formulas, casks, Mac App Store apps, Go and Cargo packages, and VS Code extensions to [`.homebrew/Brewfile`](.homebrew/Brewfile). Rust comes from rustup and Haskell from ghcup, both installed by the Brewfile and set up by `equip brew`.
- Add Python, Node, Ruby, Java, and Terraform versions and npm CLI tools to [`.config/mise/config.toml`](.config/mise/config.toml). The global Python virtualenv lives at `~/.venv`, and its packages are listed in [`bin/equip`](bin/equip).
- Don't forget to `git pull` any updates!

## Manual steps

Some things can't be automated, usually because macOS requires you to approve them yourself.

- Give your terminal app Full Disk Access in System Settings → Privacy & Security, then re-run `equip osx`. Without it the zoom settings (zoom with <kbd>ctrl</kbd> + scroll wheel and zoom follows the pointer) and the Safari and Mail settings can't be changed; `equip osx` opens the right settings pane for you.
- Allow your terminal app to control System Events when asked. `equip brew` uses this to add Dropbox, Flux, Rectangle, and Theine as login items, and `bin/set_wallpaper` uses it to set the Desktop picture.
- Confirm the dialog when `equip osx` makes Google Chrome the default web browser.
- Enter your password when `equip brew` asks; some casks need `sudo` to install, uninstall, or adopt an app you installed by hand.

## Environment: `~/env`

- [`ghostty`](env/ghostty) has the color themes for [Ghostty](https://ghostty.org), installed during the `bin/equip osx` step.
- `Solarized Light xterm-256color.terminal` is the theme to use in `Terminal.app`, installed during the `bin/equip osx` step.
- [`Rio Sunrise.jpg`](env/Rio%20Sunrise.jpg) is my favorite Desktop image, set during the `bin/equip osx` step. The other `Rio` images are alternates.
- [`Inconsolata.otf`](env/Inconsolata.otf) is a font for writing code, it's automatically installed during the `bin/equip env` step. Ghostty uses Fira Code, which is installed from the Brewfile.
- [`extensions.duti`](env/extensions.duti) sets which apps open which file extensions, applied during the `bin/equip ext` step.
- The [`post-commit`](env/post-commit) and [`pre-commit`](env/pre-commit) files are git hooks used to maintain this repository. They're also installed as part of the `bin/equip env` step.
- [`prompt_lexical_setup`](env/prompt_lexical_setup) is my [prezto](https://github.com/sorin-ionescu/prezto) prompt theme, installed as part of the `bin/equip env` step. It shows the current Python environment (`global` for `~/.venv`) and Node version.
- [`install-zooomwatcher.sh`](env/install-zooomwatcher.sh) installs a launch agent that keeps [`bin/zoomwatcher`](bin/zoomwatcher) running in the background.
- [`nice.css`](env/nice.css) is a nice style sheet useful for overriding annoying websites.
- [`dircolors_examples.tgz`](env/dircolors_examples.tgz) is used by [`bin/show_dircolors`](bin/show_dircolors).

## Utilities: `~/bin`

Installed into your [`~/bin`](bin) directory, these tools will be on your `PATH`. For detailed usage documentation see the [`README.md` for `~/bin`](bin/README.md), or of course run any of the tools with the argument `--help`.

> **Note:** Some scripts in this repository are written assuming that you're using [zsh](http://www.zsh.org/) as your shell, which has been the default shell on macOS since [Catalina](https://support.apple.com/en-us/HT208050). However, most scripts in `~/bin` are written with a `/bin/bash` [shebang](<https://en.wikipedia.org/wiki/Shebang_(Unix)>) because I like to use [shellcheck](https://github.com/koalaman/shellcheck) to ensure code quality, and shellcheck [doesn't support zsh](https://github.com/koalaman/shellcheck/issues/809). Where possible I've tried to maintain backwards compatibility with `bash`, but I make no guarantees.

| Tool                                           | Usage                                                                  |
| ---------------------------------------------- | ---------------------------------------------------------------------- |
| [`alert`](bin/alert)                           | Provides shell level windowed alerting system.                         |
| [`backmost`](bin/backmost)                     | Send the current frontmost windowed macOS application to the back.     |
| [`br`](bin/br)                                 | Reset hue light files.                                                 |
| [`busy`](bin/busy)                             | Turn on a busy light.                                                  |
| [`capture_x`](bin/capture_x)                   | Creates a screenshot of selected window on X11.                        |
| [`card`](bin/card)                             | Fetches card images from Scryfall and converts them to proxies sheets. |
| [`cleanup`](bin/cleanup)                       | Cleans system and application caches on macOS.                         |
| [`colortest`](bin/colortest)                   | Prints out an entire color palette of terminal color codes.            |
| [`daemons`](bin/daemons)                       | Finds and removes unwanted daemons and agents.                         |
| [`deploy_dotfiles`](bin/deploy_dotfiles)       | Installs bin and env from this repository to remote server via ssh.    |
| [`die`](bin/die)                               | Kills processes based on process name.                                 |
| [`doc`](bin/doc)                               | Builds HTML output from Markdown file.                                 |
| [`dogs`](bin/dogs)                             | Streams system logs for docker containers.                             |
| [`equip`](bin/equip)                           | Install applications and development environment on an macOS or Lin... |
| [`faff`](bin/faff)                             | Sleeps for the given number of seconds, showing a progress bar.        |
| [`flip`](bin/flip)                             | Flips input upside down.                                               |
| [`git-arc`](bin/git-arc)                       | Tool for archiving and restoring git branches.                         |
| [`git-authors`](bin/git-authors)               | Git script for discovering who wrote the code at the current workin... |
| [`git-fp`](bin/git-fp)                         | Git script for cleaning up stale local branches.                       |
| [`git-lg`](bin/git-lg)                         | Git script for printing beautiful logs.                                |
| [`git-ltr`](bin/git-ltr)                       | Lists (a-la 'ls -ltr') git controlled source files in current direc... |
| [`git-name-change`](bin/git-name-change)       | Clones a repo then changes the name and email address in entire his... |
| [`git-parent`](bin/git-parent)                 | Finds the direct parent of the current branch in git.                  |
| [`git-pretty`](bin/git-pretty)                 | Runs prettier on vue/js/ts files in the most recent N commits.         |
| [`git-pt`](bin/git-pt)                         | Force updates remote topic branch with local branch.                   |
| [`git-recon`](bin/git-recon)                   | A tool for reconciling your local git repositories.                    |
| [`git-run`](bin/git-run)                       | Runs a command on files that have recently changed.                    |
| [`git-tidy`](bin/git-tidy)                     | Tidies up all the junk this repository.                                |
| [`git-what`](bin/git-what)                     | Build a useful git description of the changes in this branch.          |
| [`git-wrote`](bin/git-wrote)                   | Who wrote the most lines for the files in the current directory.       |
| [`macosver`](bin/macosver)                     | Prints current macOS version information.                              |
| [`mon`](bin/mon)                               | Month name to number and vice versa.                                   |
| [`nodeula-rasa`](bin/nodeula-rasa)             | Gives you a total clean slate in your node project.                    |
| [`nopw`](bin/nopw)                             | Enables password-less ssh TO username@remotehost FROM localhost.       |
| [`npm-update`](bin/npm-update)                 | Tries to update package dependencies to latest using ncu, npm, and ... |
| [`paystub`](bin/paystub)                       | Get your latest paystub as PDF from Check's API.                       |
| [`pc`](bin/pc)                                 | Blow away and reinstall all pre-commit hooks with prek.                |
| [`root`](bin/root)                             | Prints the root of the current repository.                             |
| [`set_wallpaper`](bin/set_wallpaper)           | Sets the desktop wallpaper on all screens.                             |
| [`show_dircolors`](bin/show_dircolors)         | Shows example output based on current dircolors settings.              |
| [`slept`](bin/slept)                           | Get time macOS system last went to sleep.                              |
| [`snake`](bin/snake)                           | Convert camelCase to snake_case.                                       |
| [`uninstall_homebrew`](bin/uninstall_homebrew) | Uninstalls Homebrew.                                                   |
| [`usages`](bin/usages)                         | Prints out documentation and usages for utilities.                     |
| [`weather`](bin/weather)                       | Show the current weather directly in your terminal.                    |
| [`whereami`](bin/whereami)                     | Prints your current city name using your geoip location.               |
| [`woke`](bin/woke)                             | Get time macOS system last woke from sleep.                            |
| [`xdie`](bin/xdie)                             | Kills processes based on their window title.                           |
| [`xf`](bin/xf)                                 | Extract common file formats.                                           |
| [`yeti-mute`](bin/yeti-mute)                   | Disables the "Thru" (headphone passthru) setting on Blue Yeti micro... |
| [`zoomwatcher`](bin/zoomwatcher)               | A service that watches for zoom and turns a hue light red if it is ... |

## What does `equip all` install?

Glad you asked! `equip all` will go through the following steps one by one. For the steps that install packages/formulas/casks/whatever, see below for the list of included items.

| Step     | Description                                                                        |
| -------- | ---------------------------------------------------------------------------------- |
| xcode    | Ensure that Xcode Command Line Tools are installed                                 |
| dotfiles | Ensure home directory is a git repository for dotfiles                             |
| brew     | Ensure Homebrew installed and everything in the Brewfile is installed and upgraded |
| ext      | Ensure file extension associations are correct                                     |
| zsh      | Ensure shell is latest version of zsh from Homebrew                                |
| env      | Update environment configuration and submodules                                    |
| tex      | Ensure TeX Live is updated and extra TeX packages are installed via tlmgr          |
| mise     | Ensure mise and mise managed tools are installed                                   |
| osx      | Override macOS "defaults" settings and configuration                               |
| dot      | Runs steps: dotfiles zsh env                                                       |
| apps     | Runs steps: xcode brew ext tex mise                                                |
| most     | Runs steps: apps dot (basically everything but the osx step)                       |
| all      | Runs all steps                                                                     |

Homebrew formulas, casks, Mac App Store apps, and Go and Cargo packages are listed in [`.homebrew/Brewfile`](.homebrew/Brewfile). Python, Node, Ruby, Java, and npm CLI tools are managed by [mise](https://mise.jdx.dev) and listed in [`.config/mise/config.toml`](.config/mise/config.toml).## License

```text
Inconsolata font Created by Raph Levien using his own tools and FontForge.
Copyright 2006 Raph Levien. Released under the SIL Open Font License.


The MIT License (MIT)

Copyright (c) 2026, lexicalunit@lexicalunit.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
