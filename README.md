# Synopsis

I hate installing, configuring, and updating software on my computer. For example when I'm using a
new machine, or sshing into a remote system. I've automated as much of that process as I can,
keeping everything as lightweight as possible.

## Do everything

Configure and install everything:

```bash
cd && curl -LOks https://github.com/lexicalunit/dotfiles/tarball/master
tar xvzf master --strip 1 -C . && rm master
bin/equip -f all
```

## Usage

1. Clone this repository into your home directory.
1. Source your new environment by opening a new terminal or running [`. ~/.profile`](.profile).
1. Execute the command [`equip all`](bin/equip) to step through configuration of system settings,
   installation of applications, and creation of your complete developer environment.

You can also use the tool [`bin/deploy_dotfiles`](bin/deploy_dotfiles) to automatically
export these settings to a remote machine.

## Maintenance

* Your home directory is a git repository now! Track changes and commit updates as needed.
* There are some git hooks in [`env`](env) that generate certain files for you.
* Re-run [`equip all`](bin/equip) periodically to update applications and configuration.
* Don't forget to `git pull` any updates!

## Not Automated

There's some things that I would like to have automated but I haven't found a way yet.

- Automatically start up after being installed: Dropbox, Rectangle, Flux
- Automatically setup launch at startup: Rectangle, Amphetamine
- Automatically setup iterm2's config location
- Automatically set up the Dock's icons
- Automatically install web browser extensions
- Disable "Show recent applications in Dock"
- Enable zoom via <kbd>ctrl</kbd> + mouse wheel scroll
- Enable zoom follows mouse pointer
- Enable text to speech for selected text via <kbd>option</kbd> + <kbd>esc</kbd>

## Environment: `~/env`

* `Solarized Light.itermcolors` and
  `Solarized Light xterm-256color.terminal`
  themes to use in `Terminal.app` or [`iTerm.app`](http://iterm2.com/).
* `com.googlecode.iterm2.plist` are my settings for [`iTerm.app`](http://iterm2.com/).
* [`Rio.jpg`](env/Rio.jpg) is my favorite Desktop image.
* [`Inconsolata.otf`](env/Inconsolata.otf) is my favorite font for writing code,
  it's automatically installed during the `bin/equip env` step.
* The [`post-commit`](env/post-commit) and [`pre-commit`](env/pre-commit) files are git hooks
  use to maintain this repository. They're also installed as part of the `bin/equip env` step.
* [`prompt_lexical_setup`](env/prompt_lexical_setup) is my
  [prezto](https://github.com/sorin-ionescu/prezto) prompt theme, installed as part of the
  `bin/equip env` step.
* [`nice.css`](env/nice.css) is a nice style sheet useful for overriding annoying websites.
* [`dircolors_examples.tgz`](env/dircolors_examples.tgz) is used by
  [`bin/show_dircolors`](bin/show_dircolors).

## Utilities: `~/bin`

Installed into your [`~/bin`](bin) directory, these tools will be on your `PATH`. For detailed usage
documentation see the [`README.md` for `~/bin`](bin/README.md), or of course run any of the tools
with the argument `--help`.

> **Note:** Some scripts in this repository are written assuming that you're using
> [zsh](http://www.zsh.org/) as your shell. As of
> [macOS Catalina](https://support.apple.com/en-us/HT208050) the default shell is `zsh`.
> However, most scripts in `~/bin` are written with a `/bin/bash`
> [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix)) because I like to use
> [shellcheck](https://github.com/koalaman/shellcheck) to ensure code quality. Where possible I've
> tried to maintain backwards compatibility with `bash`, but I make no guarantees. You should start
> using `zsh` as soon as possible. It's so much better. In the future there will hopefully be
> [direct support](https://github.com/koalaman/shellcheck/issues/809)
> for `#!/usr/bin/env zsh` in `shellcheck`.

| Tool | Usage |
| --- | --- |
| [`alert`](bin/alert) | Provides shell level windowed alerting system. |
| [`backmost`](bin/backmost) | Send the current frontmost windowed macOS application to the back. |
| [`br`](bin/br) | Reset hue light files. |
| [`busy`](bin/busy) | Turn on a busy light. |
| [`capture_x`](bin/capture_x) | Creates a screenshot of selected window on X11. |
| [`card`](bin/card) | CARD="$1" |
| [`cleanup`](bin/cleanup) | Cleans system and application caches on macOS. |
| [`codeclimate`](bin/codeclimate) | Runs Code Climate on the current working directory. |
| [`colortest`](bin/colortest) | Prints out an entire color palette of terminal color codes. |
| [`daemons`](bin/daemons) | Finds and removes unwanted daemons and agents. |
| [`deploy_dotfiles`](bin/deploy_dotfiles) | Installs bin and env from this repository to remote server via ssh. |
| [`die`](bin/die) | Kills processes based on process name. |
| [`doc`](bin/doc) | Builds HTML output from Markdown file. |
| [`dogs`](bin/dogs) | Streams system logs for docker containers. |
| [`drc`](bin/drc) | Run a Check django backend. |
| [`equip`](bin/equip) | Install applications and development environment on an macOS or Lin... |
| [`faff`](bin/faff) | Sleeps for the given number of seconds, showing a progress bar. |
| [`firefox-tabs`](bin/firefox-tabs) | Attempts to list the currently open urls in your Firefox tabs. |
| [`flip`](bin/flip) | Flips input upside down. |
| [`git-arc`](bin/git-arc) | Tool for archiving and restoring git branches. |
| [`git-authors`](bin/git-authors) | Git script for discovering who wrote the code at the current workin... |
| [`git-fp`](bin/git-fp) | Git script for cleaning up merged tracking branches. |
| [`git-lg`](bin/git-lg) | Git script for printing beautiful logs. |
| [`git-ltr`](bin/git-ltr) | Lists (a-la 'ls -ltr') git controlled source files in current direc... |
| [`git-name-change`](bin/git-name-change) | Clones a repo then changes the name and email address in entire his... |
| [`git-parent`](bin/git-parent) | Finds the direct parent of the current branch in git. |
| [`git-pretty`](bin/git-pretty) | Runs prettier on vue/js/ts files in the most recent N commits. |
| [`git-pt`](bin/git-pt) | Force updates remote topic branch with local branch. |
| [`git-recon`](bin/git-recon) | A tool for reconciling your local git repositories. |
| [`git-run`](bin/git-run) | Runs a command on files that have recently changed. |
| [`git-tidy`](bin/git-tidy) | Tidies up all the junk this repository. |
| [`git-what`](bin/git-what) | Build a useful git description of the changes in this branch. |
| [`git-wrote`](bin/git-wrote) | Who wrote the most lines for the files in the current directory. |
| [`golist`](bin/golist) | Looks for downloaded go modules in your system go path. |
| [`install_odbc`](bin/install_odbc) | Sets up ODBC. |
| [`macosver`](bin/macosver) | Prints current macOS version information. |
| [`mon`](bin/mon) | Month name to number and vice versa. |
| [`nodeula-rasa`](bin/nodeula-rasa) | Gives you a total clean slate in your node project. |
| [`nopw`](bin/nopw) | Enables password-less ssh TO username@remotehost FROM localhost. |
| [`npm-update`](bin/npm-update) | Tries to update package dependencies to latest using ncu, npm, and ... |
| [`paystub`](bin/paystub) | Get your latest paystub as PDF from Check's API. |
| [`ppt`](bin/ppt) | Runs pytest tests locally. |
| [`rc`](bin/rc) | Spin up or attach to tumx running Check development services. |
| [`root`](bin/root) | Prints the root of the current repository. |
| [`set_wallpaper`](bin/set_wallpaper) | Uses Cocoa classes via PyObjC to set a desktop wallpaper on all scr... |
| [`show_dircolors`](bin/show_dircolors) | Shows example output based on current dircolors settings. |
| [`slept`](bin/slept) | Get time macOS system last went to sleep. |
| [`snake`](bin/snake) | Convert camelCase to snake_case. |
| [`uninstall_homebrew`](bin/uninstall_homebrew) | Uninstalls Homebrew. |
| [`usages`](bin/usages) | Prints out documentation and usages for utilities. |
| [`weather`](bin/weather) | Show the current weather directly in your terminal. |
| [`whereami`](bin/whereami) | Prints your current city name using your geoip location. |
| [`woke`](bin/woke) | Get time macOS system last woke from sleep. |
| [`xdie`](bin/xdie) | Kills processes based on their window title. |
| [`xf`](bin/xf) | Extract common file formats. |
| [`zoomwatcher`](bin/zoomwatcher) | A service that watches for zoom and turns a hue light red if it is ... |

# What does `equip all` install?

Glad you asked! `equip all` will go through the following steps one by one. For the steps that
install packages/formulas/casks/whatever, see below for the list of included items.

| Step | Description |
| --- | --- |
| xcode | Ensure that Xcode Command Line Tools are installed |
| dotfiles | Ensure home directory is a git repository for dotfiles |
| brew | Ensure Homebrew installed, formulas upgraded, and Amphetamine installed |
| cask | Ensure Homebrew Casks are installed |
| ext | Ensure file extension associations are correct |
| zsh | Ensure shell is latest version of zsh from Homebrew |
| env | Update environment configuration and submodules |
| python | Upgrade/Install python and mamba packages |
| node | Ensure Node modules are installed via npm |
| go | Ensure Go packages are installed |
| cargo | Ensure Rust packages are installed via cargo |
| code | Ensure VS Code installed via Homebrew Cask and its packages are installed |
| osx | Override macOS "defaults" settings and configuration |
| dot | Runs steps: dotfiles zsh env |
| apps | Runs steps: xcode brew cask ext python node go cargo code |
| most | Runs steps: apps dot (basically everything but the osx step) |
| all | Runs all steps |

Homebrew Formulas: autoconf, awscli, bash, brotli, c-ares, cabal-install, 
chrome-cli, coreutils, defaultbrowser, diff-so-fancy, direnv, duti, exa, 
exiftool, expect, fasd, fontconfig, freetype, fribidi, fzf, gdbm, gettext, ghc, 
ghostscript, git, git-lfs, git-secrets, glances, glib, gnu-sed, gnu-tar, go, 
gobject-introspection, graphite2, harfbuzz, icu4c, imagemagick@6, jbig2dec, 
jemalloc, jez/formulae/pandoc-sidenote, jpeg, jq, krb5, libev, libevent, 
libffi, libidn, libidn2, libpng, libpthread-stubs, libssh2, libtiff, libtool, 
libunistring, libuv, libx11, libxau, libxcb, libxdmcp, libxext, libxrender, 
libyaml, little-cms2, lzo, m4, mas, mpdecimal, ncurses, nghttp2, node, nvm, 
oniguruma, openjpeg, openssl@1.1, pandoc, pango, pcre, pcre2, pidof, pixman, 
pkg-config, postgresql, pyenv, pyenv-virtualenv, pyenv-virtualenvwrapper, 
pyright, python@3.8, python@3.9, readline, ripgrep, rlwrap, rust, shellcheck, 
shfmt, six, sqlite, tcl-tk, tmux, toolbox, tree, utf8proc, vramsteg, watch, 
wdiff, webp, wget, xorgproto, xz, yarn, zsh

Homebrew Casks: 1password, 1password/tap/1password-cli, chromedriver, discord, 
disk-inventory-x, docker, dropbox, fantastical, flux, font-fira-code, 
font-hack-nerd-font, google-chrome, iexplorer, iterm2, lingon-x, mactex, ngrok, 
obsidian, rectangle, signal, slack, snes9x, sourcetree, spotify, steam, 
tableplus, texstudio, the-unarchiver, transmission, vagrant, 
visual-studio-code, vlc

Code Packages: DavidAnson.vscode-markdownlint, GitHub.copilot, 
GitHub.copilot-chat, HookyQR.beautify, James-Yu.latex-workshop, 
PascalReitermann93.vscode-yaml-sort, be5invis.toml, bibhasdn.unique-lines, 
charliermarsh.ruff, dbaeumer.vscode-eslint, eamodio.gitlens, 
esbenp.prettier-vscode, exiasr.hadolint, foxundermoon.shell-format, 
hashicorp.terraform, joe-re.sql-language-server, karunamurti.haml, 
mgmcdermott.vscode-language-babel, mike-co.import-sorter, 
mohsen1.prettify-json, ms-azuretools.vscode-docker, ms-python.debugpy, 
ms-python.python, ms-python.vscode-pylance, ms-vscode.live-server, 
nickmillerdev.pytest-fixtures, redhat.vscode-yaml, richie5um2.vscode-sort-json, 
streetsidesoftware.code-spell-checker, sysoev.language-stylus, 
timonwong.shellcheck

Mamba Packages: appdirs, appnope, attrs, backcall, brotlipy, ca-certificates, 
cachecontrol, cachy, certifi, cffi, charset-normalizer, cleo, clikit, 
crashtest, cryptography, decorator, distlib, filelock, html5lib, idna, 
importlib-metadata, importlib_metadata, iniconfig, ipython, ipython_genutils, 
jedi, jsonschema, keyring, libcxx, libffi, lockfile, lz4, lz4-c, 
matplotlib-inline, more-itertools, msgpack-python, ncurses, openssl, packaging, 
parso, pastel, pexpect, pickleshare, pip, pkginfo, pluggy, poetry, poetry-core, 
prompt-toolkit, ptyprocess, py, pycosat, pycparser, pygments, pylev, pyopenssl, 
pyparsing, pyrsistent, pysocks, pytest, pyyaml, readline, requests, 
requests-toolbelt, ruamel_yaml, setuptools, shellingham, six, sqlite, tk, toml, 
tomlkit, tqdm, traitlets, urllib3, virtualenv, wcwidth, webencodings, wheel, 
xz, yaml, zipp, zlib

Node Modules: @ibm/plex, JSON, all-contributors-cli, create-react-app, cson, 
dockerlint, eslint, external-ip, generator-code, generator-generator, 
geoip-lite, js-beautify, json-stable-stringify, moment, nesh, 
npm-check-updates, npm-remote-ls, npm-why, prettier, raml2html, standard, 
tmpin, typescript, yo

Go Packages: github.com/BurntSushi/toml

Cargo Packages: cargo-update, jless, loc, porsmo

# License

```
Inconsolata font Created by Raph Levien using his own tools and FontForge.
Copyright 2006 Raph Levien. Released under the SIL Open Font License.


The MIT License (MIT)

Copyright (c) 2024, lexicalunit@lexicalunit.com

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

