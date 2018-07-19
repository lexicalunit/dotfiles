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
| zsh | Ensure shell is latest version of zsh from Homebrew |
| env | Update envrionment configuration and submodules |
| python | Upgrade/Install Anaconda, pip packages, and conda packages |
| node | Ensure Node modules are installed via npm |
| go | Ensure Go packages are installed |
| cargo | Ensure Rust packages are installed via cargo |
| gem | Upgrade/Install gem packages and rubygems-update package |
| atom | Ensure Atom installed via Homebrew Cask and apm packages are upgraded |
| code | Ensure VS Code installed via Homebrew Cask and its packages are installed |
| osx | Override macOS "defaults" settings and configuration |

Homebrew Formulas: adns, autoconf, automake, bash, clang-format, cmake, 
colordiff, coreutils, csv-fix, diff-so-fancy, docker, doxygen, faac, fasd, 
ffmpeg, flake8, fontconfig, freetype, gd, gdbm, geoip, gettext, ghostscript, 
gifsicle, git, git-flow, git-review, git-secrets, glib, gmp, gnu-sed, gnu-tar, 
gnupg, gnutls, hub, icu4c, id3lib, imagemagick@6, isl, jasper, jbig2dec, 
jez/formulae/pandoc-sidenote, jhead, jo, jpeg, jq, kafkacat, lame, libassuan, 
libevent, libffi, libgcrypt, libgpg-error, libidn2, libksba, libmpc, libpng, 
librdkafka, libssh2, libtasn1, libtiff, libtool, libunistring, libusb, 
libusb-compat, libvo-aacenc, libyaml, little-cms2, lz4, lzlib, makedepend, 
md5sha1sum, memcached, mpfr, mtr, mysql, ncftp, net-snmp, nettle, nginx, 
no-more-secrets, node, npth, nvm, onepass, oniguruma, openssl, ossp-uuid, 
p11-kit, pandoc, pcre, pidof, pinentry, pkg-config, plotutils, pngquant, 
postgresql, pyenv, pyenv-virtualenv, pyenv-virtualenvwrapper, readline, redis, 
ripgrep, rust, s3cmd, shellcheck, shfmt, sloccount, sqlite, sqliteodbc, swig, 
tree, unixodbc, v8, vegeta, vramsteg, watch, wdiff, webp, wget, x264, xvid, xz, 
yajl, yaml-cpp, youtube-dl, zsh

Homebrew Casks: 1password, atom, atom-beta, balsamiq-mockups, battle-net, 
caffeine, clamxav, dbvisualizer, disk-inventory-x, docker, dropbox, evernote, 
fantastical, firefox, flux, google-chrome, google-hangouts, iexplorer, 
istumbler, iterm2, java, kaleidoscope, lingon-x, lisanet-gimp, mactex, 
mysqlworkbench, silverlight, skype, slack, snes9x, sourcetree, spectacle, 
spotify, steam, sublime-text, texstudio, transmission, vagrant, virtualbox, 
visual-studio-code, vlc, whatsapp, xquartz

Atom Packages: activate-power-mode, aesthetic-ui, atom-beautify, atom-isort, 
atom-language-avro, atom-notes, atom-typescript, auto-update-packages, 
autocomplete-python, base16-syntax, better-git-blame, busy-signal, 
column-select, cursor-indicator, docblockr, event-watch, file-icons, 
flatwhite-syntax, force-tab, format-shell, highlight-selected, hyperclick, 
indent-guide-improved, intentions, isotope-light-ui, isotope-ui, 
language-applescript, language-atom-notes, language-babel, language-cmake, 
language-diff, language-docker, language-dot, language-groovy, language-latex, 
language-markdown, language-protobuf, language-restructuredtext, language-rust, 
language-scala, line-length-break, linter, linter-clang, linter-coffeelint, 
linter-csslint, linter-docker, linter-erb, linter-eslint, linter-flake8, 
linter-jsonlint, linter-rubocop, linter-shellcheck, linter-tidy, linter-tslint, 
linter-ui-default, linter-write-good, markdown-preview-plus, minimap, 
minimap-find-and-replace, minimap-git-diff, minimap-highlight-selected, 
minimap-selection, multi-wrap-guide, native-ui, no-title-bar, pigments, 
pretty-json, python-yapf, red-wavy-underline, ruby-block, set-syntax, 
soft-wrap-indicator, sort-lines, standard-formatter, stylus, tab-control, 
tabs-to-spaces, tinacious-design-syntax-purple, toggle-quotes, trailing-spaces, 
unity-ui

Code Packages: DavidAnson.vscode-markdownlint, HookyQR.beautify, 
dbaeumer.vscode-eslint, eg2.tslint, magicstack.MagicPython, ms-python.python, 
ms-vscode.Go, robertohuertasm.vscode-icons, spywhere.guides, 
streetsidesoftware.code-spell-checker, waderyan.gitblame

Pip Packages: git-sweep3k, glances, httpie, inflection, patch, 
python-json-logger, termcolor

Conda Packages: alabaster, appnope, asn1crypto, astroid, atomicwrites, attrs, 
babel, backcall, ca-certificates, certifi, cffi, chardet, conda, conda-env, 
coverage, cryptography, decorator, docutils, flake8, hypothesis, idna, 
imagesize, ipython, ipython_genutils, isort, jedi, jinja2, lazy-object-proxy, 
libcxx, libcxxabi, libedit, libffi, markupsafe, mccabe, more-itertools, 
ncurses, nose, numpydoc, openssl, packaging, parso, pep8, pexpect, pickleshare, 
pip, pluggy, prompt_toolkit, ptyprocess, py, pycodestyle, pycosat, pycparser, 
pyflakes, pygments, pylint, pympler, pyopenssl, pyparsing, pysocks, pytest, 
python-dateutil, python.app, pytz, pyyaml, readline, requests, ruamel_yaml, 
setuptools, simplegeneric, six, snowballstemmer, sphinx, sphinxcontrib, 
sphinxcontrib-websupport, sqlite, tk, traitlets, typing, urllib3, wcwidth, 
wheel, wrapt, xz, yaml, zlib, zope, zope.interface

Gem Packages: addressable, ast, backports, bigdecimal, bundler, bundler-unload, 
coffee-script, coffee-script-source, colorator, commander, concurrent-ruby, 
connection_pool, did_you_mean, em-websocket, ethon, eventmachine, execjs, 
executable-hooks, faraday, faraday_middleware, ffi, forwardable-extended, 
gem-wrappers, gh, highline, http_parser.rb, i18n, io-console, jaro_winkler, 
jekyll, jekyll-sass-converter, jekyll-watch, json, kramdown, launchy, liquid, 
listen, lolcat, manpages, mercenary, minitest, multi_json, multipart-post, 
net-http-persistent, net-http-pipeline, net-telnet, openssl, paint, parallel, 
parser, pathutil, power_assert, powerpack, psych, public_suffix, pusher-client, 
rainbow, rake, rb-fsevent, rb-inotify, rdoc, rouge, rubocop, ruby-progressbar, 
ruby_dep, rubygems-bundler, rvm, safe_yaml, sass, sass-listen, test-unit, 
travis, trollop, typhoeus, unicode-display_width, xmlrpc

Node Modules: JSON, all-contributors-cli, coffee-script, coffeelint, cson, 
decaffeinate, dockerlint, eslint, external-ip, generator-code, geoip-lite, 
js-beautify, json-stable-stringify, moment, nesh, raml2html, standard, tmpin, yo

Go Packages: github.com/acroca/go-symbols, github.com/cweill/gotests/gotests, 
github.com/davidrjenni/reftools/cmd/fillstruct, 
github.com/davidrjenni/reftools/cmd/fillswitch, 
github.com/davidrjenni/reftools/cmd/fillswitch/test-fixtures/broken_typeswi, 
github.com/davidrjenni/reftools/cmd/fillswitch/test-fixtures/empty_switch, 
github.com/davidrjenni/reftools/cmd/fillswitch/test-fixtures/multipkgs, 
github.com/davidrjenni/reftools/cmd/fillswitch/test-fixtures/switch_1, 
github.com/davidrjenni/reftools/cmd/fillswitch/test-fixtures/typeswitch_1, 
github.com/davidrjenni/reftools/cmd/fillswitch/test-fixtures/typeswitch_2, 
github.com/davidrjenni/reftools/cmd/fillswitch/test-fixtures/typeswitch_3, 
github.com/davidrjenni/reftools/cmd/fillswitch/test-fixtures/typeswitch_4, 
github.com/davidrjenni/reftools/cmd/fillswitch/test-fixtures/typeswitch_5, 
github.com/davidrjenni/reftools/cmd/fixplurals, github.com/fatih/gomodifytags, 
github.com/golang/lint, github.com/golang/lint/golint, 
github.com/haya14busa/goplay/cmd/goplay, github.com/haya14busa/goplay/socket, 
github.com/josharian/impl, github.com/karrick/godirwalk/examples/clean-empties, 
github.com/karrick/godirwalk/examples/walk-fast, 
github.com/karrick/godirwalk/examples/walk-stdlib, github.com/mdempsky/gocode, 
github.com/ramya-rao-a/go-outline, github.com/rogpeppe/godef, 
github.com/rogpeppe/godef/go/sym, github.com/uudashr/gopkgs/cmd/gopkgs, 
golang.org/x/lint, golang.org/x/net/context/ctxhttp, golang.org/x/net/dict, 
golang.org/x/net/dns/dnsmessage, golang.org/x/net/html/charset, 
golang.org/x/net/http/httpproxy, golang.org/x/net/http2/h2i, 
golang.org/x/net/icmp, golang.org/x/net/internal/sockstest, 
golang.org/x/net/nettest, golang.org/x/net/netutil, golang.org/x/net/proxy, 
golang.org/x/net/publicsuffix, golang.org/x/net/route, golang.org/x/net/trace, 
golang.org/x/net/webdav, golang.org/x/net/xsrftoken, 
golang.org/x/tools/cmd/benchcmp, golang.org/x/tools/cmd/bundle, 
golang.org/x/tools/cmd/callgraph, golang.org/x/tools/cmd/compilebench, 
golang.org/x/tools/cmd/cover, golang.org/x/tools/cmd/digraph, 
golang.org/x/tools/cmd/eg, golang.org/x/tools/cmd/fiximports, 
golang.org/x/tools/cmd/getgo, golang.org/x/tools/cmd/getgo/server, 
golang.org/x/tools/cmd/go-contrib-init, golang.org/x/tools/cmd/godex, 
golang.org/x/tools/cmd/godoc, golang.org/x/tools/cmd/goimports, 
golang.org/x/tools/cmd/gomvpkg, golang.org/x/tools/cmd/gorename, 
golang.org/x/tools/cmd/gotype, golang.org/x/tools/cmd/goyacc, 
golang.org/x/tools/cmd/guru, golang.org/x/tools/cmd/heapview, 
golang.org/x/tools/cmd/heapview/internal/core, 
golang.org/x/tools/cmd/html2article, golang.org/x/tools/cmd/present, 
golang.org/x/tools/cmd/ssadump, golang.org/x/tools/cmd/stress, 
golang.org/x/tools/cmd/stringer, golang.org/x/tools/cmd/tip, 
golang.org/x/tools/cmd/toolstash, golang.org/x/tools/go/gccgoexportdata, 
golang.org/x/tools/go/vcs, tch

Cargo Packages: cargo-update, loc

# License

```
Inconsolata font Created by Raph Levien using his own tools and FontForge.
Copyright 2006 Raph Levien. Released under the SIL Open Font License.


The MIT License (MIT)

Copyright (c) 2018, lexicalunit@lexicalunit.com

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

