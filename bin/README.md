* * *
### [`addroot`](bin/addroot)
```
usage: addroot ROOT_FOLDER
Runs command Adds Root Folder in Atom using given ROOT_FOLDER.
```

* * *
### [`alert`](bin/alert)
```
usage: alert [-qh] [message]

    -h: print usage help
    -q: enable quiet mode (do not generate any sound)
```

* * *
### [`api`](bin/api)
```
usage: api [options] [curl options] 'URI'

Hits the given URI and returns the result as prettified JSON.
options:
    -h: show this usage help
    -n: dry run
    -j: use curl option: -H 'content-type: application/json'

curl options:
The first option that can not be parsed as an option to this script
will be interpreted as the beginning of options to be passed to curl.
Or force the beginning of curl option parsing by passing -- first.
```

* * *
### [`apmpull`](bin/apmpull)
```
usage: apmpull [-h|--help]
Updates atom packages that are installed via git cloning them into ~/.atom/packages.
```

* * *
### [`b2d`](bin/b2d)
```
usage: b2d [-h|--help]
Get boot2docker up and running.
```

* * *
### [`bluetooth_reset`](bin/bluetooth_reset)
```
usage: bluetooth_reset [-h|--help]
Resets bluetooth on OS X. Run without arguments first, then follow instructions.
```

* * *
### [`capture`](bin/capture)
```
usage: capture [-h|--help]

Creates a screenshot of selected window on X11.
```

* * *
### [`colortest`](bin/colortest)
```
usage: colortest

Prints out table of terminal color codes.
```

* * *
### [`die`](bin/die)
```
usage: die [options] REGEX

kills all processes matching REGEX.

options:
 -n enables dryrun mode
 -q enables quite mode
 -h or --help shows usage help
```

* * *
### [`doc`](bin/doc)
```
usage: doc [-h|--help] FILE.md
Converts FILE.md into FILE.html using github markdown CSS style.
```

* * *
### [`docker_clean`](bin/docker_clean)
```
Delete all docker containers and images.
```

* * *
### [`fa`](bin/fa)
```
usage: fa [-h|--help] [python regex]

Finds All (fa) occurrences of the given regex using grin to search source files,
ignoring directories: CVS, RCS, .svn, .hg, .bzr, .git, build, dist, CMakeFiles
and ignoring file extensions: .pyc, .pyo, .so, .o, .a, .tgz, .tar.gz, .rar, .zip, ~, #, .bak, .png, .jpg, .gif, .bmp, .tif, .tiff, .pyd, .dll, .exe, .obj, .lib, cmake, Makefile

usage: grin [-h] [-v] [-i] [-A AFTER_CONTEXT] [-B BEFORE_CONTEXT] [-C CONTEXT]
            [-I INCLUDE] [-n] [-N] [-H] [--without-filename] [--emacs] [-l]
            [-L] [--no-color] [--use-color] [--force-color] [-s]
            [--skip-hidden-files] [-b] [--skip-backup-files] [-S]
            [--skip-hidden-dirs] [-d SKIP_DIRS] [-D] [-e SKIP_EXTS] [-E]
            [--no-follow] [--follow] [-f FILE] [-0] [--sys-path]
            regex [files [files ...]]

Search text files for a given regex pattern.

positional arguments:
  regex                 the regular expression to search for
  files                 the files to search

optional arguments:
  -h, --help            show this help message and exit
  -v, --version         show program's version number and exit
  -i, --ignore-case     ignore case in the regex
  -A AFTER_CONTEXT, --after-context AFTER_CONTEXT
                        the number of lines of context to show after the match
                        [default=0]
  -B BEFORE_CONTEXT, --before-context BEFORE_CONTEXT
                        the number of lines of context to show before the
                        match [default=0]
  -C CONTEXT, --context CONTEXT
                        the number of lines of context to show on either side
                        of the match
  -I INCLUDE, --include INCLUDE
                        only search in files matching this glob [default='*']
  -n, --line-number     show the line numbers [default]
  -N, --no-line-number  do not show the line numbers
  -H, --with-filename   show the filenames of files that match [default]
  --without-filename    do not show the filenames of files that match
  --emacs               print the filename with every match for easier parsing
                        by e.g. Emacs
  -l, --files-with-matches
                        show only the filenames and not the texts of the
                        matches
  -L, --files-without-matches
                        show the matches with the filenames
  --no-color            do not use colorized output [default if piping the
                        output]
  --use-color           use colorized output [default if outputting to a
                        terminal]
  --force-color         always use colorized output even when piping to
                        something that may not be able to handle it
  -s, --no-skip-hidden-files
                        do not skip .hidden files
  --skip-hidden-files   do skip .hidden files [default]
  -b, --no-skip-backup-files
                        do not skip backup~ files [deprecated; edit --skip-
                        exts]
  --skip-backup-files   do skip backup~ files [default] [deprecated; edit
                        --skip-exts]
  -S, --no-skip-hidden-dirs
                        do not skip .hidden directories
  --skip-hidden-dirs    do skip .hidden directories [default]
  -d SKIP_DIRS, --skip-dirs SKIP_DIRS
                        comma-separated list of directory names to skip
                        [default='CVS,RCS,.svn,.hg,.bzr,build,dist']
  -D, --no-skip-dirs    do not skip any directories
  -e SKIP_EXTS, --skip-exts SKIP_EXTS
                        comma-separated list of file extensions to skip [defau
                        lt='.pyc,.pyo,.so,.o,.a,.tgz,.tar.gz,.rar,.zip,~,#,.ba
                        k,.png,.jpg,.gif,.bmp,.tif,.tiff,.pyd,.dll,.exe,.obj,.
                        lib']
  -E, --no-skip-exts    do not skip any file extensions
  --no-follow           do not follow symlinks to directories and files
                        [default]
  --follow              follow symlinks to directories and files
  -f FILE, --files-from-file FILE
                        read files to search from a file, one per line; - for
                        stdin
  -0, --null-separated  filenames specified in --files-from-file are separated
                        by NULs
  --sys-path            search the directories on sys.path

Bug reports to <enthought-dev@mail.enthought.com>.
```

* * *
### [`fart`](bin/fart)
```
usage: fart SECONDS [-h|--help]
Sleeps for the given number of seconds, showing a progress bar.
```

* * *
### [`ff`](bin/ff)
Symbolic link to '/usr/local/bin/grind'
```
usage: ff [-h] [-v] [-s] [--skip-hidden-files] [-b] [--skip-backup-files] [-S]
          [--skip-hidden-dirs] [-d SKIP_DIRS] [-D] [-e SKIP_EXTS] [-E]
          [--no-follow] [--follow] [-0] [--dirs DIRS [DIRS ...]] [--sys-path]
          [glob]

Find text and binary files using similar rules as grin.

positional arguments:
  glob                  the glob pattern to match; you may need to quote this
                        to prevent the shell from trying to expand it
                        [default='*']

optional arguments:
  -h, --help            show this help message and exit
  -v, --version         show program's version number and exit
  -s, --no-skip-hidden-files
                        do not skip .hidden files
  --skip-hidden-files   do skip .hidden files
  -b, --no-skip-backup-files
                        do not skip backup~ files [deprecated; edit --skip-
                        exts]
  --skip-backup-files   do skip backup~ files [default] [deprecated; edit
                        --skip-exts]
  -S, --no-skip-hidden-dirs
                        do not skip .hidden directories
  --skip-hidden-dirs    do skip .hidden directories
  -d SKIP_DIRS, --skip-dirs SKIP_DIRS
                        comma-separated list of directory names to skip
                        [default='CVS,RCS,.svn,.hg,.bzr,build,dist']
  -D, --no-skip-dirs    do not skip any directories
  -e SKIP_EXTS, --skip-exts SKIP_EXTS
                        comma-separated list of file extensions to skip [defau
                        lt='.pyc,.pyo,.so,.o,.a,.tgz,.tar.gz,.rar,.zip,~,#,.ba
                        k,.png,.jpg,.gif,.bmp,.tif,.tiff,.pyd,.dll,.exe,.obj,.
                        lib']
  -E, --no-skip-exts    do not skip any file extensions
  --no-follow           do not follow symlinks to directories and files
                        [default]
  --follow              follow symlinks to directories and files
  -0, --null-separated  print the filenames separated by NULs
  --dirs DIRS [DIRS ...]
                        the directories to start from
  --sys-path            search the directories on sys.path

Bug reports to <enthought-dev@mail.enthought.com>.
```

* * *
### [`flip`](bin/flip)
```
usage: echo 'text' | flip

Literally flips input upside down, printing words so they appear to be flipped over.
```

* * *
### [`fm`](bin/fm)
```
usage: fm [-h|--help] [grep pattern]

Recursively Finds given pattern within CMake files.
```

* * *
### [`git_ltr`](bin/git_ltr)
```
usage: git_ltr [-h|--help] [-r]
Lists (a-la 'ls -ltr') git controlled source files in current directory.

options:
    -h, --help   show usage help
    -r           recursive
```

* * *
### [`git_name_change`](bin/git_name_change)
```
usage: git_name_change REPO_URL OLD_EMAIL NEW_NAME NEW_EMAIL
clones the given repo, changing the name and email address in entire history
```

* * *
### [`git_push_topic`](bin/git_push_topic)
```
usage: git_push_topic [-h|--help]
Preforms command 'git push -fu origin $BRANCH', force pushing feature branch up to remote origin.
```

* * *
### [`git_reauthor`](bin/git_reauthor)
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
### [`install`](bin/install)
```
usage: install [uninstall]
Installs setup/bin tools into user's ~/bin directory.
```

* * *
### [`install_mysql`](bin/install_mysql)
```
usage: install_mysql [-h|--help] [uninstall]
If the 'uninstall' command is given, uninstalls MySQL instead.
```

* * *
### [`jsc`](bin/jsc)
Symbolic link to '/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc'
```
Usage: jsc [options] [files] [-- arguments]
  -d         Dumps bytecode (debug builds only)
  -e         Evaluate argument as script code
  -f         Specifies a source file (deprecated)
  -h|--help  Prints this help message
  -i         Enables interactive mode (default if no files are specified)
  -s         Installs signal handlers that exit on a crash (Unix platforms only)
  -p <file>  Outputs profiling data to a file
  -x         Output exit code before terminating

  --options                  Dumps all JSC VM options and exits
  --dumpOptions              Dumps all JSC VM options before continuing
  --<jsc VM option>=<value>  Sets the specified JSC VM option
```

* * *
### [`lt`](bin/lt)
```
usage: lt DURATION CMD [ARG]

A limited bash version of the GNU tool timeout. Use timeout if you have it.
```

* * *
### [`macosver`](bin/macosver)
```
usage: macosver

Simply prints out the OS X major and minor version.
```

* * *
### [`nopw`](bin/nopw)
```
usage: nopw [-h|-help] [ssh connection options] username@remotehost
Puts your public ssh key in the authorized_keys on the remote host.
```

* * *
### [`readmeize`](bin/readmeize)
```
usage: readmeize [-h|--help]
Prepares given image for use in a README.md file.
```

* * *
### [`reset_boot2docker`](bin/reset_boot2docker)
```
Reset completely boot2docker on OS X.
```

* * *
### [`root`](bin/root)
```
usage: root [-h|--help]
Prints the root directory of the current source repository.
```

* * *
### [`s`](bin/s)
```
usage: s [-h|--help] [git command]
Print out the git status, or given command, of all subdirectories of the current directory.
```

* * *
### [`safari_cache`](bin/safari_cache)
```
usage: safari_cache [-h|--help]
Generates and displays a webpage displaying Safari's cache.
```

* * *
### [`safari_clean`](bin/safari_clean)
```
usage: safari_clean [-h|--help]
Cleans Safari caches and saved data on OS X.
Use 'yes | safari_clean' to auto-confirm the cleaning of everything.
```

* * *
### [`setup`](bin/setup)
```
usage: setup [-l|-d|-f|-h|--help] [all|step-name(s)]
Automatically installs and configures a complete OS X developer environment.

options:
    -h, --help     show usage help
    -l             list available step names
    -d             dry-run
    -f             force install, do not ask for any confirmation
    all            executes all steps
    step-name(s)   execute the given step(s)

steps:
    osx          Override OS X defaults settings and configuration
    xcode        Ensure that Xcode Command Line Tools are installed
    java         Ensure that Apple's java for OS X is installed
    brew         Ensure Homebrew installed and formulas upgraded
    cask         Ensure Homebrew Casks are installed
    atom         Ensure Atom installed via Homebrew Cask and apm packages are upgraded
    zsh          Ensure shell is latest version of zsh from Homebrew
    python       Upgrade/Install Anaconda, pip packages, and conda packages
    gem          Upgrade/Install gem packages and rubygems-update package
    node         Ensure Node modules are installed
    tiddlywiki   Install and setup latest TiddlyWiki from Homebrew

Homebrew Formulas: autoconf, automake, bash, bison, boost, boot2docker, cloog, 
cmake, composer, coreutils, cppunit, dmd, docker, docker-compose, doxygen, 
faac, ffmpeg, fontconfig, freetype, gdbm, geoip, gettext, ghostscript, gifify, 
gifsicle, git, glib, gmp, gmp4, gnu-sed, gnu-tar, gnupg, go, gradle, graphviz, 
htop-osx, id3lib, id3v2, imagemagick, isl, jbig2dec, jhead, jpeg, jq, lame, 
libevent, libffi, libgpg-error, libksba, libmpc, libpng, libtiff, libtool, 
libvo-aacenc, libyaml, little-cms2, maven, md5sha1sum, memcached, mercurial, 
mongodb, mpfr, ncftp, nginx, node, onepass, openssl, ossp-uuid, pandoc, pcre, 
pidof, pkg-config, plotutils, pngquant, postgresql, rabbitmq, readline, redis, 
ruby, rust, s3cmd, scons, sdl2, sdl2_image, shellcheck, sloccount, spark, 
sqlite, storm, tree, unixodbc, unrar, vramsteg, watch, webp, wget, x264, xvid, 
xz, yaml-cpp, youtube-dl, z, zeromq, zlib, zookeeper, zsh, zsh-completions

Homebrew Casks: adium-beta, amazon-music, atom, audacity, balsamiq-mockups, 
battle-net, caffeine, chromecast, clamxav, cyberduck, dbvisualizer, 
disk-inventory-x, dropbox, evernote, firefox, flux, gimp-lisanet, 
google-chrome, google-hangouts, hipchat, iexplorer, istumbler, iterm2, java7, 
kaleidoscope, kvirc, mactex, mysqlworkbench, oclint, onepassword, pdftk, 
pycharm-ce, robomongo, silverlight, skype, snes9x, soundflower, sourcetree, 
spotify, steam, sublime-text3, teamviewer, texstudio, transmission, vlc, xquartz

Atom Packages: atom-beautify, atom-pair, autocomplete-plus, 
autocomplete-plus-python-jedi, column-select, cursor-indicator, event-watch, 
file-icons, git-blame, gruvbox, highlight-selected, hydrogen, isotope-light-ui, 
isotope-ui, language-applescript, language-diff, language-latex, 
language-puppet, language-rust, linter, linter-clang, linter-coffeelint, 
linter-csslint, linter-erb, linter-flake8, linter-just-say-no, linter-puppet, 
linter-puppet-lint, linter-shellcheck, linter-tidy, linter-write-good, minimap, 
minimap-codeglance, minimap-find-and-replace, minimap-git-diff, 
minimap-highlight-selected, minimap-selection, monokai, multi-wrap-guide, 
next-occurrence, opened-files, python-isort, python-yapf, rainbow-selection, 
red-wavy-underline, script, set-syntax, soft-wrap-indicator, sort-lines, 
symbols-tree-view, tab-control, tabs-to-spaces, todo-show, toggle-quotes, 
trailing-spaces

Pip Packages: anyjson, backports.ssl-match-hostname, beautifulsoup4, bson, 
fabric, flake8, google-api-python-client, httplib2, iniparse, isort, jedi, 
oauth2client, pep8, psycopg2, pyasn1-modules, pydruid, pyflakes, pymongo, 
python-cson, python-dateutil, pytz, requests, rsa, simplejson, suds, tables, 
termcolor, tinycss, uritemplate, wsgiref

Conda Packages: abstract-rendering, anaconda, argcomplete, astropy, atom, 
bcolz, beautiful-soup, binstar, bitarray, blaze, blaze-core, blz, bokeh, boto, 
casuarius, cdecimal, cffi, chaco, clyent, colorama, conda, conda-build, 
conda-env, configobj, cryptography, cubes, curl, cython, cytoolz, datashape, 
dateutil, decorator, docutils, dynd-python, ecdsa, enable, enaml, enum34, 
fastcache, flask, freetype, funcsigs, future, futures, gevent, 
gevent-websocket, greenlet, grin, h5py, hdf5, into, ipython, ipython-notebook, 
ipython-qtconsole, itsdangerous, jdcal, jinja2, jpeg, jsonschema, kiwisolver, 
launcher, lcms, libdynd, libpng, libsodium, libtiff, libxml2, libxslt, llvm, 
llvmlite, llvmpy, lxml, markupsafe, matplotlib, mccabe, mercurial, mock, 
modules, multipledispatch, networkx, nltk, node-webkit, nose, numba, numexpr, 
numpy, openpyxl, openssl, pandas, paramiko, patsy, pil, pip, ply, psutil, 
pyasn1, pyaudio, pycosat, pycparser, pycrypto, pycurl, pyface, pygments, 
pyopenssl, pyparsing, pyqt, pytables, pytest, python.app, pyyaml, pyzmq, qt, 
readline, redis, redis-py, rope, runipy, scikit-image, scikit-learn, scipy, 
setuptools, sip, six, sockjs-tornado, sphinx, spyder, spyder-app, sqlalchemy, 
sqlite, ssl_match_hostname, statsmodels, sympy, tk, toolz, tornado, traits, 
traitsui, ujson, unicodecsv, werkzeug, xlrd, xlsxwriter, xlwt, yaml, zeromq, 
zlib

Gem Packages: 

Node Modules: coffee-script, cson, doctoc, grunt-cli, gulp, js-beautify, 
tiddlywiki, tmpin
```

* * *
### [`setup_odbc`](bin/setup_odbc)
```
usage: setup_odbc [-h|--help]
Attempts to install a working ODBC configuration to OS X.
Uses unixODBC with FreeTDS from Homebrew.
Requires hand editing to support your specific installation.
```

* * *
### [`share`](bin/share)
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
### [`slept`](bin/slept)
```
usage: slept [-h|--help]
Uses sysctl to discover when the last time OS X slept was.
```

* * *
### [`smongo`](bin/smongo)
```
usage: smongo HOST

Discovers and then connects mongo shell to the cluster master node.
```

* * *
### [`uninstall_homebrew`](bin/uninstall_homebrew)
```
usage: uninstall_homebrew [-h|--help]
See https://gist.github.com/1173223 for details.
```

* * *
### [`uninstall_macports`](bin/uninstall_macports)
```
usage: uninstall_macports [-h|--help]
See http://guide.macports.org/chunked/installing.macports.uninstalling.html for details.
```

* * *
### [`update_bin`](bin/update_bin)
```
usage: update_bin [-h|--help]
Copies scripts in ~/bin into ./bin. Honors ignore file.
```

* * *
### [`usages`](bin/usages)
```
usage: usages [-t|--table|-v|--verbose-h|--help]
Prints out documentation and usage information for everything in current directory.

-t,--table:   prints out information in a markdown table.
-v,--verbose: prints out all usage information in markdown format.
-v,--help:    prints out this help message.
```

* * *
### [`woke`](bin/woke)
```
usage: woke [-h|--help]
Uses sysctl to discover when the last time OS X woke was.
```

* * *
### [`xdie`](bin/xdie)
```
usage: xdie [-p|-h|--help] REGEX
Kills all windows matching REGEX. Use -p for pretend mode.
```

* * *
### [`xf`](bin/xf)
```
usage: xf <archive> - extract common file formats
```

* * *
### [`yaml2json`](bin/yaml2json)
```
usage: yaml2json < file.yaml
Takes YAML input and pretty prints conversion to JSON format.
```

* * *
### [`youtube2mp3`](bin/youtube2mp3)
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
    --ignore-config                  Do not read configuration files. When given in the global configuration file /etc
                                     /youtube-dl.conf: Do not read the user configuration in ~/.config/youtube-dl/config
                                     (%APPDATA%/youtube-dl/config.txt on Windows)
    --flat-playlist                  Do not extract the videos of a playlist, only list them.
    --no-color                       Do not emit color codes in output

  Network Options:
    --proxy URL                      Use the specified HTTP/HTTPS proxy. Pass in an empty string (--proxy "") for direct
                                     connection
    --socket-timeout SECONDS         Time to wait before giving up, in seconds
    --source-address IP              Client-side IP address to bind to (experimental)
    -4, --force-ipv4                 Make all connections via IPv4 (experimental)
    -6, --force-ipv6                 Make all connections via IPv6 (experimental)
    --cn-verification-proxy URL      Use this proxy to verify the IP address for some Chinese sites. The default proxy
                                     specified by --proxy (or none, if the options is not present) is used for the
                                     actual downloading. (experimental)

  Video Selection:
    --playlist-start NUMBER          Playlist video to start at (default is 1)
    --playlist-end NUMBER            Playlist video to end at (default is last)
    --playlist-items ITEM_SPEC       Playlist video items to download. Specify indices of the videos in the playlist
                                     seperated by commas like: "--playlist-items 1,2,5,8" if you want to download videos
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
    --match-filter FILTER            Generic video filter (experimental). Specify any key (see help for -o for a list of
                                     available keys) to match if the key is present, !key to check if the key is not
                                     present,key > NUMBER (like "comment_count > 12", also works with >=, <, <=, !=, =)
                                     to compare against a number, and & to require multiple matches. Values which are
                                     not known are excluded unless you put a question mark (?) after the operator.For
                                     example, to only match videos that have been liked more than 100 times and disliked
                                     less than 50 times (or the dislike functionality is not available at the given
                                     service), but who also have a description, use  --match-filter "like_count > 100 &
                                     dislike_count <? 50 & description" .
    --no-playlist                    Download only the video, if the URL refers to a video and a playlist.
    --yes-playlist                   Download the playlist, if the URL refers to a video and a playlist.
    --age-limit YEARS                Download only videos suitable for the given age
    --download-archive FILE          Download only videos not listed in the archive file. Record the IDs of all
                                     downloaded videos in it.
    --include-ads                    Download advertisements as well (experimental)

  Download Options:
    -r, --rate-limit LIMIT           Maximum download rate in bytes per second (e.g. 50K or 4.2M)
    -R, --retries RETRIES            Number of retries (default is 10), or "infinite".
    --buffer-size SIZE               Size of download buffer (e.g. 1024 or 16K) (default is 1024)
    --no-resize-buffer               Do not automatically adjust the buffer size. By default, the buffer size is
                                     automatically resized from an initial value of SIZE.
    --playlist-reverse               Download playlist videos in reverse order
    --xattr-set-filesize             Set file xattribute ytdl.filesize with expected filesize (experimental)
    --hls-prefer-native              Use the native HLS downloader instead of ffmpeg (experimental)
    --external-downloader COMMAND    Use the specified external downloader. Currently supports aria2c,curl,httpie,wget
    --external-downloader-args ARGS  Give these arguments to the external downloader

  Filesystem Options:
    -a, --batch-file FILE            File containing URLs to download ('-' for stdin)
    --id                             Use only video ID in file name
    -o, --output TEMPLATE            Output filename template. Use %(title)s to get the title, %(uploader)s for the
                                     uploader name, %(uploader_id)s for the uploader nickname if different,
                                     %(autonumber)s to get an automatically incremented number, %(ext)s for the filename
                                     extension, %(format)s for the format description (like "22 - 1280x720" or "HD"),
                                     %(format_id)s for the unique id of the format (like YouTube's itags: "137"),
                                     %(upload_date)s for the upload date (YYYYMMDD), %(extractor)s for the provider
                                     (youtube, metacafe, etc), %(id)s for the video id, %(playlist_title)s,
                                     %(playlist_id)s, or %(playlist)s (=title if present, ID otherwise) for the playlist
                                     the video is in, %(playlist_index)s for the position in the playlist. %(height)s
                                     and %(width)s for the width and height of the video format. %(resolution)s for a
                                     textual description of the resolution of the video format. %% for a literal
                                     percent. Use - to output to stdout. Can also be used to download to a different
                                     directory, for example with -o
                                     '/my/downloads/%(uploader)s/%(title)s-%(id)s.%(ext)s' .
    --autonumber-size NUMBER         Specify the number of digits in %(autonumber)s when it is present in output
                                     filename template or --auto-number option is given
    --restrict-filenames             Restrict filenames to only ASCII characters, and avoid "&" and spaces in filenames
    -A, --auto-number                [deprecated; use  -o "%(autonumber)s-%(title)s.%(ext)s" ] Number downloaded files
                                     starting from 00000
    -t, --title                      [deprecated] Use title in file name (default)
    -l, --literal                    [deprecated] Alias of --title
    -w, --no-overwrites              Do not overwrite files
    -c, --continue                   Force resume of partially downloaded files. By default, youtube-dl will resume
                                     downloads if possible.
    --no-continue                    Do not resume partially downloaded files (restart from beginning)
    --no-part                        Do not use .part files - write directly into output file
    --no-mtime                       Do not use the Last-modified header to set the file modification time
    --write-description              Write video description to a .description file
    --write-info-json                Write video metadata to a .info.json file
    --write-annotations              Write video annotations to a .annotations.xml file
    --load-info FILE                 JSON file containing the video information (created with the "--write-info-json"
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
    -j, --dump-json                  Simulate, quiet but print JSON information. See --output for a description of
                                     available keys.
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
    --sleep-interval SECONDS         Number of seconds to sleep before each download.

  Video Format Options:
    -f, --format FORMAT              Video format code, see the "FORMAT SELECTION" for all the info
    --all-formats                    Download all available video formats
    --prefer-free-formats            Prefer free video formats unless a specific one is requested
    -F, --list-formats               List all available formats
    --youtube-skip-dash-manifest     Do not download the DASH manifests and related data on YouTube videos
    --merge-output-format FORMAT     If a merge is required (e.g. bestvideo+bestaudio), output to given container
                                     format. One of mkv, mp4, ogg, webm, flv. Ignored if no merge is required

  Subtitle Options:
    --write-sub                      Write subtitle file
    --write-auto-sub                 Write automatic subtitle file (YouTube only)
    --all-subs                       Download all the available subtitles of the video
    --list-subs                      List all available subtitles for the video
    --sub-format FORMAT              Subtitle format, accepts formats preference, for example: "srt" or "ass/srt/best"
    --sub-lang LANGS                 Languages of the subtitles to download (optional) separated by commas, use IETF
                                     language tags like 'en,pt'

  Authentication Options:
    -u, --username USERNAME          Login with this account ID
    -p, --password PASSWORD          Account password. If this option is left out, youtube-dl will ask interactively.
    -2, --twofactor TWOFACTOR        Two-factor auth code
    -n, --netrc                      Use .netrc authentication data
    --video-password PASSWORD        Video password (vimeo, smotri)

  Post-processing Options:
    -x, --extract-audio              Convert video files to audio-only files (requires ffmpeg or avconv and ffprobe or
                                     avprobe)
    --audio-format FORMAT            Specify audio format: "best", "aac", "vorbis", "mp3", "m4a", "opus", or "wav";
                                     "best" by default
    --audio-quality QUALITY          Specify ffmpeg/avconv audio quality, insert a value between 0 (better) and 9
                                     (worse) for VBR or a specific bitrate like 128K (default 5)
    --recode-video FORMAT            Encode the video to another format if necessary (currently supported:
                                     mp4|flv|ogg|webm|mkv)
    -k, --keep-video                 Keep the video file on disk after the post-processing; the video is erased by
                                     default
    --no-post-overwrites             Do not overwrite post-processed files; the post-processed files are overwritten by
                                     default
    --embed-subs                     Embed subtitles in the video (only for mkv and mp4 videos)
    --embed-thumbnail                Embed thumbnail in the audio as cover art
    --add-metadata                   Write metadata to the video file
    --metadata-from-title FORMAT     Parse additional metadata like song title / artist from the video title. The format
                                     syntax is the same as --output, the parsed parameters replace existing values.
                                     Additional templates: %(album)s, %(artist)s. Example: --metadata-from-title
                                     "%(artist)s - %(title)s" matches a title like "Coldplay - Paradise"
    --xattrs                         Write metadata to the video file's xattrs (using dublin core and xdg standards)
    --fixup POLICY                   Automatically correct known faults of the file. One of never (do nothing), warn
                                     (only emit a warning), detect_or_warn (the default; fix file if we can, warn
                                     otherwise)
    --prefer-avconv                  Prefer avconv over ffmpeg for running the postprocessors (default)
    --prefer-ffmpeg                  Prefer ffmpeg over avconv for running the postprocessors
    --ffmpeg-location PATH           Location of the ffmpeg/avconv binary; either the path to the binary or its
                                     containing directory.
    --exec CMD                       Execute a command on the file after downloading, similar to find's -exec syntax.
                                     Example: --exec 'adb push {} /sdcard/Music/ && rm {}'
    --convert-subtitles FORMAT       Convert the subtitles to other format (currently supported: srt|ass|vtt)
```

