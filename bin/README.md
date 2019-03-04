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
### [`capture_x`](capture_x)
```
usage: capture_x [-h|--help]

Creates a screenshot of selected window on X11.
```

* * *
### [`cht`](cht)
```
Usage:

    cht --help           show this help
    cht --shell [LANG]   shell mode (open LANG if specified)
    cht QUERY            process QUERY and exit
```

* * *
### [`cleanup`](cleanup)
```
usage: cleanup [options]

Cleans up package manager caches.

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
### [`git_authors`](git_authors)
```
usage: git_authors [-h|--help] PATH
For git, shows who wrote the code found at the current directory.
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
### [`git_name_change`](git_name_change)
```
usage: git_name_change REPO_URL OLD_EMAIL NEW_NAME NEW_EMAIL
clones the given repo, changing the name and email address in entire history
```

* * *
### [`git_parent`](git_parent)
```
usage: git_parent [-h|--help] [-r]
Finds the direct parent of the current branch in git.

options:
    -h, --help   show usage help
```

* * *
### [`git_pretty_log`](git_pretty_log)
```
usage: git_pretty_log [-h|--help] [ARGS]
Forwards any additional ARGS to the git log command.
```

* * *
### [`git_push_topic`](git_push_topic)
```
usage: git_push_topic [-h|--help]
Preforms command 'git push -fu origin $BRANCH', force pushing feature branch up to remote origin.
```

* * *
### [`git_reauthor`](git_reauthor)
```
usage: git_reauthor [-f] commit-to-change [branch-to-rewrite [new-name [new-email]]]

  If -f is supplied it is passed to 'git filter-branch'.

  If <branch-to-rewrite> is not provided or is empty HEAD will be used.
  Use '--all' or a space separated list (e.g. 'master next') to rewrite
  multiple branches.

  If <new-name> (or <new-email>) is not provided or is empty, the normal
  user.name (user.email) Git configuration value will be used.
```

* * *
### [`git_sync`](git_sync)
```
usage: git_sync [parent] [-h|--help] [-r]
Fetch and fast-forward to the latest for origin/master or origin/parent.

options:
    -h, --help   show usage help
```

* * *
### [`git_up`](git_up)
```
usage: git_up [-h|--help] [-r]
Rebase branch on the latest changes for the remote parent branch.

options:
    -h, --help   show usage help
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
### [`jsc`](jsc)
Symbolic link to '/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc'
```
Usage: jsc [options] [files] [-- arguments]
  -d         Dumps bytecode (debug builds only)
  -e         Evaluate argument as script code
  -f         Specifies a source file (deprecated)
  -h|--help  Prints this help message
  -i         Enables interactive mode (default if no files are specified)
  -m         Execute as a module
  -s         Installs signal handlers that exit on a crash (Unix platforms only)
  -p <file>  Outputs profiling data to a file
  -x         Output exit code before terminating

  --sample                   Collects and outputs sampling profiler data
  --test262-async            Check that some script calls the print function with the string 'Test262:AsyncTestComplete'
  --strict-file=<file>       Parse the given file as if it were in strict mode (this option may be passed more than once)
  --module-file=<file>       Parse and evaluate the given file as module (this option may be passed more than once)
  --exception=<name>         Check the last script exits with an uncaught exception with the specified name
  --watchdog-exception-ok    Uncaught watchdog exceptions exit with success
  --dumpException            Dump uncaught exception text
  --options                  Dumps all JSC VM options and exits
  --dumpOptions              Dumps all non-default JSC VM options before continuing
  --<jsc VM option>=<value>  Sets the specified JSC VM option
```

* * *
### [`macosver`](macosver)
```
usage: macosver

Simply prints out the macOS major and minor version.
```

* * *
### [`nopw`](nopw)
```
usage: nopw [-h|-help] [ssh connection options] username@remotehost
Puts your public ssh key in the authorized_keys on the remote host.
```

* * *
### [`prettier`](prettier)
Symbolic link to '/usr/local/bin/prettier'
```
Usage: prettier [options] [file/glob ...]

By default, output is written to stdout.
Stdin is read if it is piped to Prettier and no files are given.

Output options:

  -l, --list-different     Print the names of files that are different from Prettier's formatting.
  --write                  Edit files in-place. (Beware!)

Format options:

  --arrow-parens <avoid|always>
                           Include parentheses around a sole arrow function parameter.
                           Defaults to avoid.
  --no-bracket-spacing     Do not print spaces between brackets.
  --end-of-line <auto|lf|crlf|cr>
                           Which end of line characters to apply.
                           Defaults to auto.
  --html-whitespace-sensitivity <css|strict|ignore>
                           How to handle whitespaces in HTML.
                           Defaults to css.
  --jsx-bracket-same-line  Put > on the last line instead of at a new line.
                           Defaults to false.
  --jsx-single-quote       Use single quotes in JSX.
                           Defaults to false.
  --parser <flow|babylon|typescript|css|less|scss|json|json5|json-stringify|graphql|markdown|mdx|vue|yaml|html|angular>
                           Which parser to use.
  --print-width <int>      The line length where Prettier will try wrap.
                           Defaults to 80.
  --prose-wrap <always|never|preserve>
                           How to wrap prose.
                           Defaults to preserve.
  --no-semi                Do not print semicolons, except at the beginning of lines which may need them.
  --single-quote           Use single quotes instead of double quotes.
                           Defaults to false.
  --tab-width <int>        Number of spaces per indentation level.
                           Defaults to 2.
  --trailing-comma <none|es5|all>
                           Print trailing commas wherever possible when multi-line.
                           Defaults to none.
  --use-tabs               Indent with tabs instead of spaces.
                           Defaults to false.

Config options:

  --config <path>          Path to a Prettier configuration file (.prettierrc, package.json, prettier.config.js).
  --no-config              Do not look for a configuration file.
  --config-precedence <cli-override|file-override|prefer-file>
                           Define in which order config files and CLI options should be evaluated.
                           Defaults to cli-override.
  --no-editorconfig        Don't take .editorconfig into account when parsing configuration.
  --find-config-path <path>
                           Find and print the path to a configuration file for the given input file.
  --ignore-path <path>     Path to a file with patterns describing files to ignore.
                           Defaults to .prettierignore.
  --plugin <path>          Add a plugin. Multiple plugins can be passed as separate `--plugin`s.
                           Defaults to [].
  --plugin-search-dir <path>
                           Custom directory that contains prettier plugins in node_modules subdirectory.
                           Overrides default behavior when plugins are searched relatively to the location of Prettier.
                           Multiple values are accepted.
                           Defaults to [].
  --with-node-modules      Process files inside 'node_modules' directory.

Editor options:

  --cursor-offset <int>    Print (to stderr) where a cursor at the given position would move to after formatting.
                           This option cannot be used with --range-start and --range-end.
                           Defaults to -1.
  --range-end <int>        Format code ending at a given character offset (exclusive).
                           The range will extend forwards to the end of the selected statement.
                           This option cannot be used with --cursor-offset.
                           Defaults to Infinity.
  --range-start <int>      Format code starting at a given character offset.
                           The range will extend backwards to the start of the first line containing the selected statement.
                           This option cannot be used with --cursor-offset.
                           Defaults to 0.

Other options:

  --no-color               Do not colorize error messages.
  --file-info <path>       Extract the following info (as JSON) for a given file path. Reported fields:
                           * ignored (boolean) - true if file path is filtered by --ignore-path
                           * inferredParser (string | null) - name of parser inferred from file path
  -h, --help <flag>        Show CLI usage, or details about the given flag.
                           Example: --help write
  --insert-pragma          Insert @format pragma into file's first docblock comment.
                           Defaults to false.
  --loglevel <silent|error|warn|log|debug>
                           What level of logs to report.
                           Defaults to log.
  --require-pragma         Require either '@prettier' or '@format' to be present in the file's first docblock comment
                           in order for it to be formatted.
                           Defaults to false.
  --stdin                  Force reading input from stdin.
  --stdin-filepath <path>  Path to the file to pretend that stdin comes from.
  --support-info           Print support information as JSON.
  -v, --version            Print Prettier version.
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
Traceback (most recent call last):
  File "./set_wallpaper", line 15, in <module>
    from AppKit import NSScreen, NSWorkspace
ModuleNotFoundError: No module named 'AppKit'
```

* * *
### [`setup`](setup)
```
usage: setup [-l|-d|-f|-h|--help] [all|step-name(s)]
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
    java       Ensure that Apple's java for macOS is installed
    brew       Ensure Homebrew installed and formulas upgraded
    cask       Ensure Homebrew Casks are installed
    ext        Ensure file extension associations are correct
    zsh        Ensure shell is latest version of zsh from Homebrew
    env        Update environment configuration and submodules
    python     Upgrade/Install Anaconda, pip packages, and conda packages
    node       Ensure Node modules are installed via npm
    go         Ensure Go packages are installed
    cargo      Ensure Rust packages are installed via cargo
    gem        Upgrade/Install gem packages and rubygems-update package
    atom       Ensure Atom installed via Homebrew Cask and apm packages are upgraded
    code       Ensure VS Code installed via Homebrew Cask and its packages are installed
    osx        Override macOS "defaults" settings and configuration

Homebrew Formulas: adns, autoconf, automake, bash, clang-format, cmake, 
colordiff, coreutils, csv-fix, diff-so-fancy, docker, doxygen, duti, exa, faac, 
fasd, ffmpeg, flake8, fontconfig, freetype, gd, gdbm, geoip, gettext, 
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
### [`shfmt`](shfmt)
Symbolic link to '/usr/local/bin/shfmt'
```
usage: shfmt [flags] [path ...]

If no arguments are given, standard input will be used. If a given path
is a directory, it will be recursively searched for shell files - both
by filename extension and by shebang.

  -version  show version and exit

  -l        list files whose formatting differs from shfmt's
  -w        write result to file instead of stdout
  -d        error with a diff when the formatting differs
  -s        simplify the code

Parser options:

  -ln str   language variant to parse (bash/posix/mksh, default "bash")
  -p        shorthand for -ln=posix

Printer options:

  -i uint   indent: 0 for tabs (default), >0 for number of spaces
  -bn       binary ops like && and | may start a line
  -ci       switch cases will be indented
  -sr       redirect operators will be followed by a space
  -kp       keep column alignment paddings
  -mn       minify program to reduce its size (implies -s)

Utilities:

  -f        recursively find all shell files and print the paths
  -tojson   print syntax tree to stdout as a typed JSON
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
usage: /Users/amytroschinetz/bin/whereami
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
### [`yaml2json`](yaml2json)
```
usage: yaml2json < file.yaml
Takes YAML input and pretty prints conversion to JSON format.
```

* * *
### [`youtube2mp3`](youtube2mp3)
```
usage: youtube2mp3 [-h|--help] [youtube-dl options] <youtube URL>

Downloads the youtube video at the given URL and creates corresponding mp3.
Uses the tool youtube-dl to do it's dirty work, so make sure that it's installed and up to date.

Usage: youtube-dl [OPTIONS] URL [URL...]

Options:
  General Options:
    -h, --help                       Print this help text and exit
    --version                        Print program version and exit
    -U, --update                     Update this program to latest version. Make sure that you have sufficient
                                     permissions (run with sudo if needed)
    -i, --ignore-errors              Continue on download errors, for example to skip unavailable videos in a playlist
    --abort-on-error                 Abort downloading of further videos (in the playlist or the command line) if an
                                     error occurs
    --dump-user-agent                Display the current browser identification
    --list-extractors                List all supported extractors
    --extractor-descriptions         Output descriptions of all supported extractors
    --force-generic-extractor        Force extraction to use the generic extractor
    --default-search PREFIX          Use this prefix for unqualified URLs. For example "gvsearch2:" downloads two videos
                                     from google videos for youtube-dl "large apple". Use the value "auto" to let
                                     youtube-dl guess ("auto_warning" to emit a warning when guessing). "error" just
                                     throws an error. The default value "fixup_error" repairs broken URLs, but emits an
                                     error if this is not possible instead of searching.
    --ignore-config                  Do not read configuration files. When given in the global configuration file
                                     /etc/youtube-dl.conf: Do not read the user configuration in ~/.config/youtube-
                                     dl/config (%APPDATA%/youtube-dl/config.txt on Windows)
    --config-location PATH           Location of the configuration file; either the path to the config or its containing
                                     directory.
    --flat-playlist                  Do not extract the videos of a playlist, only list them.
    --mark-watched                   Mark videos watched (YouTube only)
    --no-mark-watched                Do not mark videos watched (YouTube only)
    --no-color                       Do not emit color codes in output

  Network Options:
    --proxy URL                      Use the specified HTTP/HTTPS/SOCKS proxy. To enable SOCKS proxy, specify a proper
                                     scheme. For example socks5://127.0.0.1:1080/. Pass in an empty string (--proxy "")
                                     for direct connection
    --socket-timeout SECONDS         Time to wait before giving up, in seconds
    --source-address IP              Client-side IP address to bind to
    -4, --force-ipv4                 Make all connections via IPv4
    -6, --force-ipv6                 Make all connections via IPv6

  Geo Restriction:
    --geo-verification-proxy URL     Use this proxy to verify the IP address for some geo-restricted sites. The default
                                     proxy specified by --proxy (or none, if the option is not present) is used for the
                                     actual downloading.
    --geo-bypass                     Bypass geographic restriction via faking X-Forwarded-For HTTP header
    --no-geo-bypass                  Do not bypass geographic restriction via faking X-Forwarded-For HTTP header
    --geo-bypass-country CODE        Force bypass geographic restriction with explicitly provided two-letter ISO 3166-2
                                     country code
    --geo-bypass-ip-block IP_BLOCK   Force bypass geographic restriction with explicitly provided IP block in CIDR
                                     notation

  Video Selection:
    --playlist-start NUMBER          Playlist video to start at (default is 1)
    --playlist-end NUMBER            Playlist video to end at (default is last)
    --playlist-items ITEM_SPEC       Playlist video items to download. Specify indices of the videos in the playlist
                                     separated by commas like: "--playlist-items 1,2,5,8" if you want to download videos
                                     indexed 1, 2, 5, 8 in the playlist. You can specify range: "--playlist-items
                                     1-3,7,10-13", it will download the videos at index 1, 2, 3, 7, 10, 11, 12 and 13.
    --match-title REGEX              Download only matching titles (regex or caseless sub-string)
    --reject-title REGEX             Skip download for matching titles (regex or caseless sub-string)
    --max-downloads NUMBER           Abort after downloading NUMBER files
    --min-filesize SIZE              Do not download any videos smaller than SIZE (e.g. 50k or 44.6m)
    --max-filesize SIZE              Do not download any videos larger than SIZE (e.g. 50k or 44.6m)
    --date DATE                      Download only videos uploaded in this date
    --datebefore DATE                Download only videos uploaded on or before this date (i.e. inclusive)
    --dateafter DATE                 Download only videos uploaded on or after this date (i.e. inclusive)
    --min-views COUNT                Do not download any videos with less than COUNT views
    --max-views COUNT                Do not download any videos with more than COUNT views
    --match-filter FILTER            Generic video filter. Specify any key (see the "OUTPUT TEMPLATE" for a list of
                                     available keys) to match if the key is present, !key to check if the key is not
                                     present, key > NUMBER (like "comment_count > 12", also works with >=, <, <=, !=, =)
                                     to compare against a number, key = 'LITERAL' (like "uploader = 'Mike Smith'", also
                                     works with !=) to match against a string literal and & to require multiple matches.
                                     Values which are not known are excluded unless you put a question mark (?) after
                                     the operator. For example, to only match videos that have been liked more than 100
                                     times and disliked less than 50 times (or the dislike functionality is not
                                     available at the given service), but who also have a description, use --match-
                                     filter "like_count > 100 & dislike_count <? 50 & description" .
    --no-playlist                    Download only the video, if the URL refers to a video and a playlist.
    --yes-playlist                   Download the playlist, if the URL refers to a video and a playlist.
    --age-limit YEARS                Download only videos suitable for the given age
    --download-archive FILE          Download only videos not listed in the archive file. Record the IDs of all
                                     downloaded videos in it.
    --include-ads                    Download advertisements as well (experimental)

  Download Options:
    -r, --limit-rate RATE            Maximum download rate in bytes per second (e.g. 50K or 4.2M)
    -R, --retries RETRIES            Number of retries (default is 10), or "infinite".
    --fragment-retries RETRIES       Number of retries for a fragment (default is 10), or "infinite" (DASH, hlsnative
                                     and ISM)
    --skip-unavailable-fragments     Skip unavailable fragments (DASH, hlsnative and ISM)
    --abort-on-unavailable-fragment  Abort downloading when some fragment is not available
    --keep-fragments                 Keep downloaded fragments on disk after downloading is finished; fragments are
                                     erased by default
    --buffer-size SIZE               Size of download buffer (e.g. 1024 or 16K) (default is 1024)
    --no-resize-buffer               Do not automatically adjust the buffer size. By default, the buffer size is
                                     automatically resized from an initial value of SIZE.
    --http-chunk-size SIZE           Size of a chunk for chunk-based HTTP downloading (e.g. 10485760 or 10M) (default is
                                     disabled). May be useful for bypassing bandwidth throttling imposed by a webserver
                                     (experimental)
    --playlist-reverse               Download playlist videos in reverse order
    --playlist-random                Download playlist videos in random order
    --xattr-set-filesize             Set file xattribute ytdl.filesize with expected file size
    --hls-prefer-native              Use the native HLS downloader instead of ffmpeg
    --hls-prefer-ffmpeg              Use ffmpeg instead of the native HLS downloader
    --hls-use-mpegts                 Use the mpegts container for HLS videos, allowing to play the video while
                                     downloading (some players may not be able to play it)
    --external-downloader COMMAND    Use the specified external downloader. Currently supports
                                     aria2c,avconv,axel,curl,ffmpeg,httpie,wget
    --external-downloader-args ARGS  Give these arguments to the external downloader

  Filesystem Options:
    -a, --batch-file FILE            File containing URLs to download ('-' for stdin), one URL per line. Lines starting
                                     with '#', ';' or ']' are considered as comments and ignored.
    --id                             Use only video ID in file name
    -o, --output TEMPLATE            Output filename template, see the "OUTPUT TEMPLATE" for all the info
    --autonumber-start NUMBER        Specify the start value for %(autonumber)s (default is 1)
    --restrict-filenames             Restrict filenames to only ASCII characters, and avoid "&" and spaces in filenames
    -w, --no-overwrites              Do not overwrite files
    -c, --continue                   Force resume of partially downloaded files. By default, youtube-dl will resume
                                     downloads if possible.
    --no-continue                    Do not resume partially downloaded files (restart from beginning)
    --no-part                        Do not use .part files - write directly into output file
    --no-mtime                       Do not use the Last-modified header to set the file modification time
    --write-description              Write video description to a .description file
    --write-info-json                Write video metadata to a .info.json file
    --write-annotations              Write video annotations to a .annotations.xml file
    --load-info-json FILE            JSON file containing the video information (created with the "--write-info-json"
                                     option)
    --cookies FILE                   File to read cookies from and dump cookie jar in
    --cache-dir DIR                  Location in the filesystem where youtube-dl can store some downloaded information
                                     permanently. By default $XDG_CACHE_HOME/youtube-dl or ~/.cache/youtube-dl . At the
                                     moment, only YouTube player files (for videos with obfuscated signatures) are
                                     cached, but that may change.
    --no-cache-dir                   Disable filesystem caching
    --rm-cache-dir                   Delete all filesystem cache files

  Thumbnail images:
    --write-thumbnail                Write thumbnail image to disk
    --write-all-thumbnails           Write all thumbnail image formats to disk
    --list-thumbnails                Simulate and list all available thumbnail formats

  Verbosity / Simulation Options:
    -q, --quiet                      Activate quiet mode
    --no-warnings                    Ignore warnings
    -s, --simulate                   Do not download the video and do not write anything to disk
    --skip-download                  Do not download the video
    -g, --get-url                    Simulate, quiet but print URL
    -e, --get-title                  Simulate, quiet but print title
    --get-id                         Simulate, quiet but print id
    --get-thumbnail                  Simulate, quiet but print thumbnail URL
    --get-description                Simulate, quiet but print video description
    --get-duration                   Simulate, quiet but print video length
    --get-filename                   Simulate, quiet but print output filename
    --get-format                     Simulate, quiet but print output format
    -j, --dump-json                  Simulate, quiet but print JSON information. See the "OUTPUT TEMPLATE" for a
                                     description of available keys.
    -J, --dump-single-json           Simulate, quiet but print JSON information for each command-line argument. If the
                                     URL refers to a playlist, dump the whole playlist information in a single line.
    --print-json                     Be quiet and print the video information as JSON (video is still being downloaded).
    --newline                        Output progress bar as new lines
    --no-progress                    Do not print progress bar
    --console-title                  Display progress in console titlebar
    -v, --verbose                    Print various debugging information
    --dump-pages                     Print downloaded pages encoded using base64 to debug problems (very verbose)
    --write-pages                    Write downloaded intermediary pages to files in the current directory to debug
                                     problems
    --print-traffic                  Display sent and read HTTP traffic
    -C, --call-home                  Contact the youtube-dl server for debugging
    --no-call-home                   Do NOT contact the youtube-dl server for debugging

  Workarounds:
    --encoding ENCODING              Force the specified encoding (experimental)
    --no-check-certificate           Suppress HTTPS certificate validation
    --prefer-insecure                Use an unencrypted connection to retrieve information about the video. (Currently
                                     supported only for YouTube)
    --user-agent UA                  Specify a custom user agent
    --referer URL                    Specify a custom referer, use if the video access is restricted to one domain
    --add-header FIELD:VALUE         Specify a custom HTTP header and its value, separated by a colon ':'. You can use
                                     this option multiple times
    --bidi-workaround                Work around terminals that lack bidirectional text support. Requires bidiv or
                                     fribidi executable in PATH
    --sleep-interval SECONDS         Number of seconds to sleep before each download when used alone or a lower bound of
                                     a range for randomized sleep before each download (minimum possible number of
                                     seconds to sleep) when used along with --max-sleep-interval.
    --max-sleep-interval SECONDS     Upper bound of a range for randomized sleep before each download (maximum possible
                                     number of seconds to sleep). Must only be used along with --min-sleep-interval.

  Video Format Options:
    -f, --format FORMAT              Video format code, see the "FORMAT SELECTION" for all the info
    --all-formats                    Download all available video formats
    --prefer-free-formats            Prefer free video formats unless a specific one is requested
    -F, --list-formats               List all available formats of requested videos
    --youtube-skip-dash-manifest     Do not download the DASH manifests and related data on YouTube videos
    --merge-output-format FORMAT     If a merge is required (e.g. bestvideo+bestaudio), output to given container
                                     format. One of mkv, mp4, ogg, webm, flv. Ignored if no merge is required

  Subtitle Options:
    --write-sub                      Write subtitle file
    --write-auto-sub                 Write automatically generated subtitle file (YouTube only)
    --all-subs                       Download all the available subtitles of the video
    --list-subs                      List all available subtitles for the video
    --sub-format FORMAT              Subtitle format, accepts formats preference, for example: "srt" or "ass/srt/best"
    --sub-lang LANGS                 Languages of the subtitles to download (optional) separated by commas, use --list-
                                     subs for available language tags

  Authentication Options:
    -u, --username USERNAME          Login with this account ID
    -p, --password PASSWORD          Account password. If this option is left out, youtube-dl will ask interactively.
    -2, --twofactor TWOFACTOR        Two-factor authentication code
    -n, --netrc                      Use .netrc authentication data
    --video-password PASSWORD        Video password (vimeo, smotri, youku)

  Adobe Pass Options:
    --ap-mso MSO                     Adobe Pass multiple-system operator (TV provider) identifier, use --ap-list-mso for
                                     a list of available MSOs
    --ap-username USERNAME           Multiple-system operator account login
    --ap-password PASSWORD           Multiple-system operator account password. If this option is left out, youtube-dl
                                     will ask interactively.
    --ap-list-mso                    List all supported multiple-system operators

  Post-processing Options:
    -x, --extract-audio              Convert video files to audio-only files (requires ffmpeg or avconv and ffprobe or
                                     avprobe)
    --audio-format FORMAT            Specify audio format: "best", "aac", "flac", "mp3", "m4a", "opus", "vorbis", or
                                     "wav"; "best" by default; No effect without -x
    --audio-quality QUALITY          Specify ffmpeg/avconv audio quality, insert a value between 0 (better) and 9
                                     (worse) for VBR or a specific bitrate like 128K (default 5)
    --recode-video FORMAT            Encode the video to another format if necessary (currently supported:
                                     mp4|flv|ogg|webm|mkv|avi)
    --postprocessor-args ARGS        Give these arguments to the postprocessor
    -k, --keep-video                 Keep the video file on disk after the post-processing; the video is erased by
                                     default
    --no-post-overwrites             Do not overwrite post-processed files; the post-processed files are overwritten by
                                     default
    --embed-subs                     Embed subtitles in the video (only for mp4, webm and mkv videos)
    --embed-thumbnail                Embed thumbnail in the audio as cover art
    --add-metadata                   Write metadata to the video file
    --metadata-from-title FORMAT     Parse additional metadata like song title / artist from the video title. The format
                                     syntax is the same as --output. Regular expression with named capture groups may
                                     also be used. The parsed parameters replace existing values. Example: --metadata-
                                     from-title "%(artist)s - %(title)s" matches a title like "Coldplay - Paradise".
                                     Example (regex): --metadata-from-title "(?P<artist>.+?) - (?P<title>.+)"
    --xattrs                         Write metadata to the video file's xattrs (using dublin core and xdg standards)
    --fixup POLICY                   Automatically correct known faults of the file. One of never (do nothing), warn
                                     (only emit a warning), detect_or_warn (the default; fix file if we can, warn
                                     otherwise)
    --prefer-avconv                  Prefer avconv over ffmpeg for running the postprocessors
    --prefer-ffmpeg                  Prefer ffmpeg over avconv for running the postprocessors (default)
    --ffmpeg-location PATH           Location of the ffmpeg/avconv binary; either the path to the binary or its
                                     containing directory.
    --exec CMD                       Execute a command on the file after downloading, similar to find's -exec syntax.
                                     Example: --exec 'adb push {} /sdcard/Music/ && rm {}'
    --convert-subs FORMAT            Convert the subtitles to other format (currently supported: srt|ass|vtt|lrc)
```

