* * *
### [`alert`](alert)
```
usage: alert [-qh] [message]

    -h: print usage help
    -q: enable quiet mode (do not generate any sound)
```

* * *
### [`backmost`](backmost)
```
usage: backmost [-h|--help]

    -h, --help: print usage help
```

* * *
### [`br`](br)
```
usage: br [options]

Reset hue light files.

options:
 -h or --help shows usage help
```

* * *
### [`busy`](busy)
```
usage: busy [color] [options]

Turn on a busy light.

options:
 -h or --help shows usage help
```

* * *
### [`capture_x`](capture_x)
```
usage: capture_x [-h|--help]

Creates a screenshot of selected window on X11.
```

* * *
### [`card`](card)
```
usage: card [options] CARD
Fetches a card image from Scryfall and converts it to a PNG.

options:
    -h, --help   show usage help
```

* * *
### [`cleanup`](cleanup)
```
usage: cleanup [options]

Cleans system and application caches on macOS.

options:
 -h or --help shows usage help
```

* * *
### [`codeclimate`](codeclimate)
```
usage: codeclimate [-h|--help] [-v]
Runs Code Climate on the current working directory.

options:
    -h, --help   show usage help
    -v           verbose, show docker command
```

* * *
### [`colortest`](colortest)
```
usage: colortest

Prints out table of terminal color codes.
```

* * *
### [`daemons`](daemons)
```
usage: daemons [-h|--help] [PATTERN|FILE_PATH]
```

* * *
### [`deploy_dotfiles`](deploy_dotfiles)
```
usage: deploy_dotfiles SSH_ARGS
deploys dotfiles source code to remote host.
```

* * *
### [`die`](die)
```
usage: die [options] REGEX

kills all processes matching REGEX.

options:
 -n enables dryrun mode
 -q enables quite mode
 -h or --help shows usage help
```

* * *
### [`doc`](doc)
```
usage: doc [-h|--help|-k] FILE.md
Opens FILE.md as FILE.html in your default web browser.

[1mRequires pandoc, pandoc-sidenote, tufte-css, and tufte-pandoc-css:(B[m

    $ cd ~
    $ brew install pandoc
    $ brew install jez/formulae/pandoc-sidenote
    $ git clone https://github.com/edwardtufte/tufte-css.git .tufte-css
    $ git clone https://github.com/jez/tufte-pandoc-css.git .tufte-pandoc-css

options:
    -h, --help   show usage help
    -k           keep .html artifact (default: no)
```

* * *
### [`dogs`](dogs)
```
usage: dogs [-h|--help]
Streams system logs for docker containers.
```

* * *
### [`drc`](drc)
```
usage: drc

Run a Check django backend.

options:
 -h or --help shows usage help
```

* * *
### [`equip`](equip)
```
usage: equip [-l|-d|-f|-h|--help] [all|step-name(s)]
Automatically installs and configures a complete *nix developer environment.

options:
    -h, --help     show usage help
    -l             list available step names
    -d             dry-run
    -f             force install, do not ask for any confirmation
    all            executes all steps
    apps           executes steps that update applications
    dot            executes dotfiles, zsh, and env
    most           executes apps and dot
    step-name(s)   execute the given step(s)

steps:
    xcode      Ensure that Xcode Command Line Tools are installed
    dotfiles   Ensure home directory is a git repository for dotfiles
    brew       Ensure Homebrew installed, formulas upgraded, and Amphetamine installed
    cask       Ensure Homebrew Casks are installed
    ext        Ensure file extension associations are correct
    zsh        Ensure shell is latest version of zsh from Homebrew
    env        Update environment configuration and submodules
    python     Upgrade/Install python and mamba packages
    node       Ensure Node modules are installed via npm
    go         Ensure Go packages are installed
    cargo      Ensure Rust packages are installed via cargo
    code       Ensure VS Code installed via Homebrew Cask and its packages are installed
    osx        Override macOS "defaults" settings and configuration
    dot        Runs steps: dotfiles zsh env
    apps       Runs steps: xcode brew cask ext python node go cargo code
    most       Runs steps: apps dot (basically everything but the osx step)
    all        Runs all steps

Homebrew Formulas: autoconf, awscli, bash, brotli, c-ares, cabal-install, 
chrome-cli, coreutils, defaultbrowser, diff-so-fancy, direnv, duti, exiftool, 
expect, fasd, fontconfig, freetype, fribidi, fzf, gdbm, gettext, ghc, 
ghostscript, git, git-lfs, git-secrets, glances, glib, gnu-sed, gnu-tar, go, 
gobject-introspection, graphite2, harfbuzz, icu4c, imagemagick@6, jbig2dec, 
jemalloc, jez/formulae/pandoc-sidenote, jpeg, jq, krb5, libev, libevent, 
libffi, libidn, libidn2, libpng, libpthread-stubs, libssh2, libtiff, libtool, 
libunistring, libuv, libx11, libxau, libxcb, libxdmcp, libxext, libxrender, 
libyaml, little-cms2, lsd, lzo, m4, mas, mpdecimal, ncurses, nghttp2, node, 
nvm, oniguruma, openhue-cli, openjpeg, openssl@1.1, pandoc, pango, pcre, pcre2, 
pidof, pixman, pkg-config, postgresql, pyenv, pyenv-virtualenv, 
pyenv-virtualenvwrapper, pyright, python@3.8, python@3.9, readline, ripgrep, 
rlwrap, rust, shellcheck, shfmt, six, sqlite, tcl-tk, tmux, toolbox, tree, 
utf8proc, vramsteg, watch, wdiff, webp, wget, xorgproto, xz, yarn, zsh

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

Go Packages: github.com/BurntSushi/toml/cmd/tomlv

Cargo Packages: cargo-update, jless, loc, porsmo
```

* * *
### [`faff`](faff)
```
usage: faff SECONDS [-h|--help]
Sleeps for the given number of seconds, showing a progress bar.
```

* * *
### [`firefox-tabs`](firefox-tabs)
```
usage: firefox-tabs [-h]

List open urls in Firefox tabs

options:
  -h, --help  show this help message and exit
```

* * *
### [`flip`](flip)
```
usage: echo 'text' | flip

Literally flips input upside down, printing words so they appear to be flipped over.
```

* * *
### [`git-arc`](git-arc)
```
usage: git-arc [-h] COMMAND [args]
Tool for archiving and restoring git branches.
options:
    -h   show usage help
commands:
    list            list archived branches
    create BRANCH   create an archive ref for the given BRANCH
    delete REF      delete archive for the given REF
    restore REF     restore the branch for the given REF
```

* * *
### [`git-authors`](git-authors)
```
usage: git-authors [-h|--help] PATH
For git, shows who wrote the code found at the current directory.
```

* * *
### [`git-fp`](git-fp)
```
usage: git-fp [-h|--help]
Git script for cleaning up merged tracking branches.
```

* * *
### [`git-lg`](git-lg)
```
usage: git-lg [-h|--help] [ARGS]
Forwards any additional ARGS to the git log command.
```

* * *
### [`git-ltr`](git-ltr)
```
usage: git-ltr [-h|--help] [-r]
Lists (a-la 'ls -ltr') git controlled source files in current directory.

options:
    -h, --help   show usage help
    -r           recursive
```

* * *
### [`git-name-change`](git-name-change)
```
usage: git-name-change REPO_URL OLD_EMAIL NEW_NAME NEW_EMAIL
clones the given repo, changing the name and email address in entire history
```

* * *
### [`git-parent`](git-parent)
```
usage: git-parent [-h|--help] [-r]
Finds the direct parent of the current branch in git.

options:
    -h, --help   show usage help
```

* * *
### [`git-pretty`](git-pretty)
```
usage: git-pretty [-h|--help] [N]
Runs prettier on vue/js/ts files in the most recent N commits.

options:
    -h, --help   show usage help
    N            number of commits to consider, default is 1
```

* * *
### [`git-pt`](git-pt)
```
usage: git-pt [-h|--help]
Preforms command 'git push -fu origin $BRANCH', force pushing feature branch up to remote origin.
```

* * *
### [`git-recon`](git-recon)
```
git-recon - reconcile your local git repos [version v1.0.1]

USAGE
    git recon [--version] [--help] [--recursive] [--porcelain]

OPTIONS
    --recursive   Recursively check subfolders, if the current directory is
                  NOT a git folder, this will be enabled by default
    --porcelain   Machine readable output
    --help        Prints this help
    --version     Prints current version


git-recon is a tool for reconciling your local git repositories.

git has a lot of things to keep track of: files, branches, tags, stashes,
submodules and worktrees.
With git-recon you can quickly check the status of all of them.
```

* * *
### [`git-run`](git-run)
```
usage: git-run [-h|--help] COMMAND PATTERN [-N]
Runs the given command on files matching the given pattern that
have changed within in the latest N commits. Or if there are any
uncomitted changes, run the command on those matching files.

options:
    -h, --help   show usage help
    -N           number of commits to consider, default is -1
```

* * *
### [`git-tidy`](git-tidy)
```
usage: git-tidy [-h|--help]
Cleans up all the junk this repository.
```

* * *
### [`git-what`](git-what)
```
usage: git-what [options]

Build a useful git description of the changes in this branch.

options:
 -h or --help shows usage help
```

* * *
### [`git-wrote`](git-wrote)
```
usage: git-wrote [-h|--help] [-n] [-f]
Who wrote the most lines for the files in the current directory.

options:
    -h, --help   show usage help
    -n           sort by name
    -f           sort by file
```

* * *
### [`golist`](golist)
```
usage: golist [-h|--help]
Looks for downloaded go modules in your system go path.

options:
    -h, --help   show usage help
```

* * *
### [`install_odbc`](install_odbc)
```
usage: install_odbc [-h|--help]
Attempts to install a working ODBC configuration to macOS.
Uses unixODBC with FreeTDS from Homebrew.
Requires hand editing to support your specific installation.
```

* * *
### [`macosver`](macosver)
```
usage: macosver

Simply prints out the macOS major and minor version.
```

* * *
### [`mon`](mon)
```
usage: mon [abbr. or number] [-h|--help]
Month name to number and vice versa.
```

* * *
### [`nodeula-rasa`](nodeula-rasa)
```
usage: nodeula-rasa [options]

Gives you a total clean slate in your node project.

options:
 -h or --help shows usage help
```

* * *
### [`nopw`](nopw)
```
usage: nopw [-h|-help] [ssh connection options] username@remotehost
Puts your public ssh key in the authorized_keys on the remote host.
```

* * *
### [`npm-update`](npm-update)
```
usage: npm-update [options]

Tries to update package dependencies to latest using ncu, npm, and audit.

options:
 -h or --help shows usage help
```

* * *
### [`paystub`](paystub)
```
usage: paystub [-h | --help | -n N | -t]
Get your latest paystub as PDF from Check's API.

options:
    -h, --help   show usage help
    -n N         generate the last N paysubs (default: 1)
    -t           show historical tax information
```

* * *
### [`pipc`](pipc)
```
usage: pipc [options]
Pip compiles any requirement*.in files in the current directory.

options:
    -h, --help   show usage help
```

* * *
### [`pipi`](pipi)
```
usage: pipi [options]
Pip installs any requirements files in the current directory.

options:
    -h, --help   show usage help
```

* * *
### [`ppt`](ppt)
```
usage: ppt [-h|--help] args
Runs pytest tests locally.

options:
    -h, --help   show usage help
```

* * *
### [`rc`](rc)
```
usage: rc

Spin or attach to tumx running Check development services.

options:
 -h or --help shows usage help
```

* * *
### [`root`](root)
```
usage: root [-h|--help]
Prints the root directory of the current source repository.
```

* * *
### [`set_wallpaper`](set_wallpaper)
```
./usages: ./set_wallpaper: /usr/bin/python: bad interpreter: No such file or directory
```

* * *
### [`show_dircolors`](show_dircolors)
```
usage: show_dircolors [-h|--help]
Shows example output based on current dircolors settings.
```

* * *
### [`slept`](slept)
```
usage: slept [-h|--help]
Uses sysctl to discover when the last time macOS slept was.
```

* * *
### [`snake`](snake)
```
usage: snake [-h|--help] [file]
Convert camelCase to snake_case.

For example:
 - echo fooBar | snake
 - snake file.txt
```

* * *
### [`uninstall_homebrew`](uninstall_homebrew)
```
usage: uninstall_homebrew [-h|--help]
See https://gist.github.com/1173223 for details.
```

* * *
### [`usages`](usages)
```
usage: usages [-t|--table|-v|--verbose|-h|--help]
Prints out documentation and usage information for everything in current directory.

-t,--table:   prints out information in a markdown table.
-v,--verbose: prints out all usage information in markdown format.
-v,--help:    prints out this help message.
```

* * *
### [`weather`](weather)
```
usage: weather [-h|--help] [location]
Shows the current weather in the given location.
```

* * *
### [`whereami`](whereami)
```
usage: whereami
Prints your current city name using your geoip location.
```

* * *
### [`woke`](woke)
```
usage: woke [-h|--help]
Uses sysctl to discover when the last time macOS woke was.
```

* * *
### [`xdie`](xdie)
```
usage: xdie [-p|-h|--help] REGEX
Kills all windows matching REGEX. Use -p for pretend mode.
```

* * *
### [`xf`](xf)
```
usage: xf <archive> - extract common file formats
```

* * *
### [`zoomwatcher`](zoomwatcher)
```
usage: zoomwatcher [options]

A service that watches for zoom and turns a hue light red if it is running.

options:
 -h or --help shows usage help
```

