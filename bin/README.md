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
usage: card [options] [CARDS]
Fetches card images from Scryfall and converts them to proxies sheets.

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
    brew       Ensure Homebrew installed and everything in the Brewfile is installed and upgraded
    ext        Ensure file extension associations are correct
    zsh        Ensure shell is latest version of zsh from Homebrew
    env        Update environment configuration and submodules
    tex        Ensure TeX Live is updated and extra TeX packages are installed via tlmgr
    mise       Ensure mise and mise managed tools are installed
    osx        Override macOS "defaults" settings and configuration
    dot        Runs steps: dotfiles zsh env
    apps       Runs steps: xcode brew ext tex mise
    most       Runs steps: apps dot (basically everything but the osx step)
    all        Runs all steps

Homebrew formulas, casks, Mac App Store apps, Go and Cargo packages, and VS Code extensions: see ~/.homebrew/Brewfile
Python, Node, Ruby, Java, and npm CLI tools: see ~/.config/mise/config.toml

Python Packages: attrs, cryptography, ipython, jsonschema, keyring, pip, 
pygments, pytest, pyyaml, requests, setuptools, toml, tomlkit, tqdm, wheel

Tex Packages: latexmk
```

* * *
### [`faff`](faff)
```
usage: faff SECONDS [-h|--help]
Sleeps for the given number of seconds, showing a progress bar.
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
Clean up merged tracking branches and merged agent worktree branches.
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
### [`pc`](pc)
```
usage: pc [options]
Blow away and reinstall all pre-commit hooks with prek.

options:
    -h, --help   show usage help
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
usage: set_wallpaper [-h|--help] --path IMAGE
Sets the desktop wallpaper on all screens.

options:
    -h, --help     show usage help
    --path IMAGE   the path of the image
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
Runs the official Homebrew uninstall script, which asks for confirmation first.
See https://github.com/Homebrew/install#uninstall-homebrew for details.
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
### [`yeti-mute`](yeti-mute)
```
Usage: yeti-mute [options]

Disables the "Thru" (headphone passthru) setting on Blue Yeti microphones.

Options:
    --watch       Stay running and re-disable passthru whenever the audio
                  device list changes (i.e. on every plug-in / KVM switch)
    -h, --help    Show this help message and exit
```

* * *
### [`zoomwatcher`](zoomwatcher)
```
usage: zoomwatcher [options]

A service that watches for zoom and turns a hue light red if it is running.

options:
 -h or --help shows usage help
```

