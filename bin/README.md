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

Reset blinkstick files.

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
    python     Upgrade/Install python and conda packages
    node       Ensure Node modules are installed via npm
    go         Ensure Go packages are installed
    cargo      Ensure Rust packages are installed via cargo
    code       Ensure VS Code installed via Homebrew Cask and its packages are installed
    osx        Override macOS "defaults" settings and configuration
    dot        Runs steps: dotfiles zsh env
    apps       Runs steps: xcode brew cask ext python node go cargo code
    most       Runs steps: apps dot (basically everything but the osx step)
    all        Runs all steps

Homebrew Formulas: autoconf, bash, brotli, c-ares, chrome-cli, coreutils, 
defaultbrowser, diff-so-fancy, duti, exa, exiftool, expect, fasd, flake8, 
fontconfig, freetype, fzf, gdbm, gettext, ghostscript, git, git-lfs, 
git-secrets, glances, gnu-sed, gnu-tar, go, icu4c, imagemagick@6, isort, 
jbig2dec, jemalloc, jez/formulae/pandoc-sidenote, jpeg, jq, krb5, libev, 
libevent, libffi, libidn, libidn2, libpng, libssh2, libtiff, libtool, 
libunistring, libusb, libuv, libyaml, little-cms2, m4, mas, mpdecimal, ncurses, 
nghttp2, node, nvm, oniguruma, openjpeg, openssl@1.1, pandoc, pcre, pcre2, 
pidof, pkg-config, postgresql, pyenv, pyenv-virtualenv, 
pyenv-virtualenvwrapper, python@3.8, python@3.9, readline, ripgrep, rlwrap, 
rust, shellcheck, shfmt, sqlite, tcl-tk, tmux, tree, utf8proc, watch, wdiff, 
webp, wget, xz, yarn, zsh

Homebrew Casks: 1password, chromedriver, discord, disk-inventory-x, docker, 
dropbox, fantastical, flux, font-fira-code, font-hack-nerd-font, google-chrome, 
iexplorer, istumbler, iterm2, lingon-x, mactex, obsidian, rectangle, signal, 
slack, snes9x, sourcetree, spotify, steam, tableplus, texstudio, 
the-unarchiver, transmission, vagrant, visual-studio-code, vlc

Code Packages: DavidAnson.vscode-markdownlint, HookyQR.beautify, 
James-Yu.latex-workshop, PascalReitermann93.vscode-yaml-sort, ban.spellright, 
be5invis.toml, bibhasdn.unique-lines, dbaeumer.vscode-eslint, eamodio.gitlens, 
esbenp.prettier-vscode, exiasr.hadolint, foxundermoon.shell-format, 
freakypie.code-python-isort, hashicorp.terraform, joe-re.sql-language-server, 
karunamurti.haml, magicstack.magicpython, mgmcdermott.vscode-language-babel, 
mike-co.import-sorter, mohsen1.prettify-json, ms-azuretools.vscode-docker, 
ms-python.python, ms-python.vscode-pylance, ms-toolsai.jupyter, 
ms-toolsai.jupyter-keymap, richie5um2.vscode-sort-json, spywhere.guides, 
sysoev.language-stylus, timonwong.shellcheck

Conda Packages: appdirs, appnope, attrs, backcall, brotlipy, ca-certificates, 
cachecontrol, cachy, certifi, cffi, charset-normalizer, cleo, clikit, 
crashtest, cryptography, decorator, distlib, filelock, html5lib, idna, 
importlib-metadata, importlib_metadata, iniconfig, ipython, ipython_genutils, 
jedi, jsonschema, keyring, libcxx, libffi, lockfile, lz4, lz4-c, 
matplotlib-inline, more-itertools, msgpack-python, ncurses, openssl, packaging, 
parso, pastel, pexpect, pickleshare, pip, pkginfo, pluggy, poetry, poetry-core, 
prompt-toolkit, ptyprocess, py, pycosat, pycparser, pygments, pylev, pyopenssl, 
pyparsing, pyrsistent, pysocks, pytest, readline, requests, requests-toolbelt, 
ruamel_yaml, setuptools, shellingham, six, sqlite, tk, toml, tomlkit, tqdm, 
traitlets, urllib3, virtualenv, wcwidth, webencodings, wheel, xz, yaml, zipp, 
zlib

Node Modules: @ibm/plex, JSON, all-contributors-cli, create-react-app, cson, 
dockerlint, eslint, external-ip, generator-code, generator-generator, 
geoip-lite, js-beautify, json-stable-stringify, moment, nesh, 
npm-check-updates, npm-remote-ls, npm-why, prettier, raml2html, standard, 
tmpin, typescript, yo

Go Packages: github.com/BurntSushi/toml

Cargo Packages: cargo-update, loc
```

* * *
### [`faff`](faff)
```
usage: faff SECONDS [-h|--help]
Sleeps for the given number of seconds, showing a progress bar.
```

* * *
### [`fgdk`](fgdk)
```
usage: fgdk [options]

Sometimes GitLab Developer Kit caddywhompus, this script kills it.

options:
 -h or --help shows usage help
```

* * *
### [`firefox-tabs`](firefox-tabs)
```
usage: firefox-tabs [-h]

List open urls in Firefox tabs

optional arguments:
  -h, --help  show this help message and exit
```

* * *
### [`flip`](flip)
```
usage: echo 'text' | flip

Literally flips input upside down, printing words so they appear to be flipped over.
```

* * *
### [`fs`](fs)
```
usage: fs [-h|--help] [-z] [-j] [ -- [ripgrep options]] <QUERY>
Use ripgrep to search a codebase.

options:
    -h, --help   show usage help
    -z           Use ripgrep's --no-ignore option
    -j           Ignore all JavaScript files
```

* * *
### [`git-authors`](git-authors)
```
usage: git-authors [-h|--help] PATH
For git, shows who wrote the code found at the current directory.
```

* * *
### [`git-lg`](git-lg)
```
usage: git-lg [-h|--help] [ARGS]
Forwards any additional ARGS to the git log command.
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
### [`git-sync`](git-sync)
```
usage: git-sync [parent] [-h|--help] [-r]
Fetch and fast-forward to the latest for origin/master or origin/parent.

options:
    -h, --help   show usage help
```

* * *
### [`git-tidy`](git-tidy)
```
usage: git-tidy [-h|--help]
Cleans up all the junk this repository.
```

* * *
### [`git-up`](git-up)
```
usage: git-up [-h|--help] [-r]
Rebase branch on the latest changes for the remote parent branch.

options:
    -h, --help   show usage help
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
### [`git_ltr`](git_ltr)
```
usage: git_ltr [-h|--help] [-r]
Lists (a-la 'ls -ltr') git controlled source files in current directory.

options:
    -h, --help   show usage help
    -r           recursive
```

* * *
### [`golist`](golist)
```
usage: golist [-h|--help] [-r]
Uses `go list` to list all user installed go packages that aren't dependencies.

options:
    -h, --help   show usage help
    -r           show only the top level repos
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
usage: set_wallpaper [-h] [--path PATH]

Sets the desktop picture on all screens

optional arguments:
  -h, --help   show this help message and exit
  --path PATH  The path of the image
```

* * *
### [`share`](share)
```
usage share [<file>|ls|names|ssh|get <name(s)>|put <file(s)>|rm <name>]
Requires ~/.webshare script be created for your webshare configuration.

The ~/.webshare script must set environment variables:
 * SHARE_USER - user to use when connecting to SHARE_HOST
 * SHARE_HOST - the hostname to connect to
 * SHARE_DEST - the root of the shares directory on SHARE_HOST
 * SHARE_URI  - the base URI for shared files
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
### [`smongo`](smongo)
```
usage: smongo HOST

Discovers and then connects mongo shell to the cluster master node.
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

A service that watches for zoom and turns a blinkstick red if it is running.

options:
 -h or --help shows usage help
```

