# Synopsis

I hate installing, configuring, and updating software on my computer. For example when I'm using a
new machine, or sshing into a remote system. I've automated as much of that process as I can,
keeping everything as lightweight as possible.

## Do everything

Configure and install everything:

```bash
cd && curl -LOks https://github.com/lexicalunit/dotfiles/tarball/master
tar xvzf master --strip 1 -C . && rm master
bin/setup -f all
```

## Usage

1. Clone this repository into your home directory.
1. Source your new environment by opening a new terminal or running [`. ~/.profile`](.profile).
1. Execute the command [`setup all`](bin/setup) to step through configuration of system settings,
   installation of applications, and creation of your complete developer environment.

You can also use the tool [`bin/deploy_dotfiles`](bin/deploy_dotfiles) to automatically
export these settings to a remote machine.

## Maintenance

* Your home directory is a git repository now! Track changes and commit updates as needed.
* There are some git hooks in [`env`](env) that generate certain files for you.
* Re-run [`setup all`](bin/setup) periodically to update applications and configuration.
* Don't forget to `git pull` any updates!

## Environment: `~/env`

* `Solarized Light.itermcolors` and
  `Solarized Light xterm-256color.terminal`
  themes to use in `Terminal.app` or [`iTerm.app`](http://iterm2.com/).
* `com.googlecode.iterm2.plist` are my settings for [`iTerm.app`](http://iterm2.com/).
* [`Rio.jpg`](env/Rio.jpg) is my favorite Desktop image.
* [`Inconsolata.otf`](env/Inconsolata.otf) is my favorite font for writing code,
  it's automatically installed during the `bin/setup env` step.
* The [`post-commit`](env/post-commit) and [`pre-commit`](env/pre-commit) files are git hooks
  use to maintain this repository. They're also installed as part of the `bin/setup env` step.
* [`prompt_lexical_setup`](env/prompt_lexical_setup) is my
  [prezto](https://github.com/sorin-ionescu/prezto) prompt theme, installed as part of the
  `bin/setup env` step.
* [`nice.css`](env/nice.css) is a nice style sheet useful for overriding annoying websites.
* [`dircolors_examples.tgz`](env/dircolors_examples.tgz) is used by
  [`bin/show_dircolors`](bin/show_dircolors).

## Utilities: `~/bin`

Installed into your [`~/bin`](bin) directory, these tools will be on your `PATH`. For detailed usage
documentation see the [`README.md` for `~/bin`](bin/README.md), or of course run any of the tools
with the argument `--help`.

| Tool | Usage |
| --- | --- |
| [`alert`](bin/alert) | Provides shell level windowed alerting system. |
| [`backmost`](bin/backmost) | Send the current frontmost windowed macOS application to the back. |
| [`capture_x`](bin/capture_x) | Creates a screenshot of selected window on X11. |
| [`cht`](bin/cht) | [X] open section |
| [`cleanup`](bin/cleanup) | Cleans up package manager caches. |
| [`codeclimate`](bin/codeclimate) | Runs Code Climate on the current working directory. |
| [`colortest`](bin/colortest) | Prints out an entire color palette of terminal color codes. |
| [`daemons`](bin/daemons) | Finds and removes unwanted daemons and agents. |
| [`deploy_dotfiles`](bin/deploy_dotfiles) | Installs bin and env from this repository to remote server via ssh. |
| [`die`](bin/die) | Kills processes based on process name. |
| [`doc`](bin/doc) | Builds HTML output from Markdown file. |
| [`faff`](bin/faff) | Sleeps for the given number of seconds, showing a progress bar. |
| [`flip`](bin/flip) | Flips input upside down. |
| [`fs`](bin/fs) | Tweak ripgrep to easily search codebases with committed files and f... |
| [`git_authors`](bin/git_authors) | Git script for discovering who wrote the code at the current workin... |
| [`git_ltr`](bin/git_ltr) | Lists (a-la 'ls -ltr') git controlled source files in current direc... |
| [`git_name_change`](bin/git_name_change) | Clones a repo then changes the name and email address in entire his... |
| [`git_parent`](bin/git_parent) | Finds the direct parent of the current branch in git. |
| [`git_pretty_log`](bin/git_pretty_log) | Git script for printing beautiful logs. |
| [`git_push_topic`](bin/git_push_topic) | Force updates remote topic branch with local branch. |
| [`git_reauthor`](bin/git_reauthor) | In git, change the author name and/or email of a single commit. |
| [`git_sync`](bin/git_sync) | Fetch and fast-forward to the latest for origin/master. |
| [`git_up`](bin/git_up) | Rebase branch on the latest changes for the remote parent branch. |
| [`golist`](bin/golist) | Lists all user installed go packages. |
| [`install_odbc`](bin/install_odbc) | Sets up ODBC. |
| [`jsc`](bin/jsc) | Symbolic link to '/System/Library/Frameworks/JavaScriptCore.framewo... |
| [`macosver`](bin/macosver) | Prints current macOS version information. |
| [`nopw`](bin/nopw) | Enables password-less ssh TO username@remotehost FROM localhost. |
| [`prettier`](bin/prettier) | Symbolic link to '/usr/local/bin/prettier' |
| [`root`](bin/root) | Prints the root of the current repository. |
| [`set_wallpaper`](bin/set_wallpaper) | Uses Cocoa classes via PyObjC to set a desktop wallpaper on all scr... |
| [`setup`](bin/setup) | Install applications and development environment on an macOS or Lin... |
| [`share`](bin/share) | Easy way to manage temporary web shares. |
| [`shfmt`](bin/shfmt) | Symbolic link to '/usr/local/bin/shfmt' |
| [`show_dircolors`](bin/show_dircolors) | Shows example output based on current dircolors settings. |
| [`slept`](bin/slept) | Get time macOS system last went to sleep. |
| [`smongo`](bin/smongo) | Opens mongo shell to master node. |
| [`uninstall_homebrew`](bin/uninstall_homebrew) | Uninstalls Homebrew. |
| [`usages`](bin/usages) | Prints out documentation and usages for utilities. |
| [`weather`](bin/weather) | Show the current weather directly in your terminal. |
| [`whereami`](bin/whereami) | Prints your current city name using your geoip location. |
| [`woke`](bin/woke) | Get time macOS system last woke from sleep. |
| [`xdie`](bin/xdie) | Kills processes based on their window title. |
| [`xf`](bin/xf) | Extract common file formats. |
| [`yaml2json`](bin/yaml2json) | Converts yaml input to json output. |
| [`youtube2mp3`](bin/youtube2mp3) | Downloads the audio from a youtube video given the URL. |

# What does `setup all` install?

Glad you asked! `setup all` will go through the following steps one by one. For the steps that
install packages/formulas/casks/whatever, see below for the list of included items.

| Step | Description |
| --- | --- |
| xcode | Ensure that Xcode Command Line Tools are installed |
| dotfiles | Ensure home directory is a git repository for dotfiles |
| java | Ensure that Apple's java for macOS is installed |
| brew | Ensure Homebrew installed and formulas upgraded |
| cask | Ensure Homebrew Casks are installed |
| ext | Ensure file extension associations are correct |
| zsh | Ensure shell is latest version of zsh from Homebrew |
| env | Update environment configuration and submodules |
| python | Upgrade/Install Anaconda, pip packages, and conda packages |
| node | Ensure Node modules are installed via npm |
| go | Ensure Go packages are installed |
| cargo | Ensure Rust packages are installed via cargo |
| gem | Upgrade/Install gem packages and rubygems-update package |
| atom | Ensure Atom installed via Homebrew Cask and apm packages are upgraded |
| code | Ensure VS Code installed via Homebrew Cask and its packages are installed |
| osx | Override macOS "defaults" settings and configuration |

Homebrew Formulas: adns, autoconf, automake, bash, bat, clang-format, cmake, 
colordiff, coreutils, csv-fix, diff-so-fancy, docker, doxygen, duti, exa, faac, 
fasd, ffmpeg, flake8, fontconfig, freetype, fzf, gd, gdbm, geoip, gettext, 
ghostscript, gifsicle, git, git-flow, git-review, git-secrets, glib, gmp, 
gnu-sed, gnu-tar, gnupg, gnutls, hub, icu4c, id3lib, imagemagick@6, isl, 
jasper, jbig2dec, jez/formulae/pandoc-sidenote, jhead, jo, jpeg, jq, kafkacat, 
lame, libassuan, libevent, libffi, libgcrypt, libgpg-error, libidn2, libksba, 
libmpc, libogg, libpng, librdkafka, libssh2, libtasn1, libtiff, libtool, 
libunistring, libusb, libusb-compat, libvo-aacenc, libvorbis, libvpx, libyaml, 
little-cms2, lz4, lzlib, makedepend, md5sha1sum, memcached, mpfr, mtr, mysql, 
ncftp, ncurses, net-snmp, nettle, nginx, node, npth, nvm, onepass, oniguruma, 
openjpeg, openssl, opus, ossp-uuid, p11-kit, pandoc, pcre, pcre2, pidof, 
pinentry, pkg-config, plotutils, pngquant, postgresql, pyenv, pyenv-virtualenv, 
pyenv-virtualenvwrapper, python, readline, redis, ripgrep, rlwrap, rust, sdl2, 
shellcheck, shfmt, snappy, sqlite, theora, tree, v8, vegeta, vramsteg, watch, 
wdiff, webp, wget, x264, x265, xvid, xz, yajl, yaml-cpp, youtube-dl, zsh

Homebrew Casks: 1password, atom, atom-beta, caffeine, clamxav, dbvisualizer, 
disk-inventory-x, docker, dropbox, fantastical, firefox, flux, 
font-hack-nerd-font, google-chrome, iexplorer, istumbler, iterm2, java, 
kaleidoscope, lingon-x, mactex, mcgimp-std, mysqlworkbench, silverlight, skype, 
slack, snes9x, sourcetree, spectacle, spotify, sublime-text, texstudio, 
the-unarchiver, transmission, vagrant, visual-studio-code, vlc, whatsapp, 
xquartz

Atom Packages: atom-notes, auto-update-packages, highlight-selected, 
language-markdown, minimap, minimap-highlight-selected, minimap-selection, 
native-ui, pen-paper-coffee-syntax, sort-lines, trailing-spaces, typewriter

Code Packages: BriteSnow.vscode-toggle-quotes, DavidAnson.vscode-markdownlint, 
HookyQR.beautify, bibhasdn.unique-lines, dbaeumer.vscode-eslint, 
eamodio.gitlens, eg2.tslint, esbenp.prettier-vscode, foxundermoon.shell-format, 
lehni.vscode-titlebar-less-macos, magicstack.MagicPython, 
mgmcdermott.vscode-language-babel, mike-co.import-sorter, 
mohsen1.prettify-json, ms-python.python, ms-vscode.Go, pmneo.tsimporter, 
robertohuertasm.vscode-icons, spywhere.guides, 
streetsidesoftware.code-spell-checker, timonwong.shellcheck, waderyan.gitblame

Pip Packages: git-sweep3k, glances, httpie, inflection, patch, 
python-json-logger, termcolor

Conda Packages: flake8, ipython, isort, jedi, nose, pep8, pygments, pylint, 
pytest, python-dateutil, pytz, pyyaml, readline, requests, setuptools, six

Gem Packages: jekyll, lolcat, rake, rdoc, rubocop

Node Modules: @ibm/plex, JSON, all-contributors-cli, coffee-script, coffeelint, 
cson, decaffeinate, dockerlint, eslint, external-ip, generator-code, 
generator-generator, geoip-lite, js-beautify, json-stable-stringify, moment, 
nesh, npm-check-updates, npm-remote-ls, npm-why, prettier, raml2html, standard, 
tmpin, tslint, typescript, yo

Go Packages: github.com/acroca/go-symbols, github.com/cweill/gotests, 
github.com/davidrjenni/reftools, github.com/fatih/gomodifytags, 
github.com/golang/lint, github.com/haya14busa/goplay, 
github.com/josharian/impl, github.com/karrick/godirwalk, 
github.com/mdempsky/gocode, github.com/ramya-rao-a/go-outline, 
github.com/rogpeppe/godef, github.com/uudashr/gopkgs, golang.org/x/crypto, 
golang.org/x/lint, golang.org/x/net, golang.org/x/sys, golang.org/x/text, 
golang.org/x/tools

Cargo Packages: cargo-update, loc

# License

```
Inconsolata font Created by Raph Levien using his own tools and FontForge.
Copyright 2006 Raph Levien. Released under the SIL Open Font License.


The MIT License (MIT)

Copyright (c) 2019, lexicalunit@lexicalunit.com

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

