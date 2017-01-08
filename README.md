# Synopsis

I hate installing, configuring, and updating software on my computer. For example when I'm using a
new machine, or sshing into a remote system. I've automated as much of that process as I can,
keeping everything as lightweight as possible.

## Do everything

Configure and install everything:

```bash
cd ~
curl -LOks https://github.com/lexicalunit/dotfiles/tarball/master
tar xvzf master --strip 1 -C .
rm master
bin/setup -f all
git init
git remote add origin git@github.com:lexicalunit/dotfiles.git
git fetch origin master
git reset --hard FETCH_HEAD
git branch -u origin/master
git submodule update --recursive --init
```

## Usage

1. Clone this repository into your home directory.
1. Source your new environment by opening a new terminal or running [`. ~/.profile`](.profile).
1. Execute the command [`setup all`](bin/setup) to step through configuration of system settings,
   installation of applications, and creation of your complete OS X developer environment.

You can also use the tool [`bin/deploy_dotfiles`](bin/deploy_dotfiles) to automatically
export these settings to a remote machine.

## Maintenance

* The tool [`bin/update_dotfiles`](bin/update_dotfiles) updates this repository with any changes
  made to the system scripts or environment.
* Re-run [`setup all`](bin/setup) periodically to update applications and configuration.
* Don't forget to `git pull` any updates!

## Environment: `~/env`

* [`My.terminal`](env/My.terminal) and [`Tomorrow Night.terminal`](env/Tomorrow Night.terminal)
  themes to use in `Terminal.app` or [`iTerm.app`](http://iterm2.com/).
* [`sane.css`](env/sane.css) style sheet for annoying websites.
* Fonts that I like to use, install them with [`bin/install_fonts`](bin/install_fonts).

## Utilities: `~/bin`

Installed into your [`~/bin`](bin) directory, these tools will be on your `PATH`. For detailed usage
documentation see the [`README.md` for `~/bin`](bin/README.md), or of course run any of the tools
with the argument `--help`.

| Tool | Usage |
| --- | --- |
| [`alert`](bin/alert) | Provides shell level windowed alerting system. |
| [`bluetooth_reset`](bin/bluetooth_reset) | Resets bluetooth on OS X. |
| [`capture`](bin/capture) | Creates a screenshot of selected window on X11. |
| [`colortest`](bin/colortest) | Prints out an entire color palette of terminal color codes. |
| [`daemons`](bin/daemons) | Finds and removes unwanted daemons and agents. |
| [`deploy_dotfiles`](bin/deploy_dotfiles) | Installs bin and env from this repository to remote server via ssh. |
| [`die`](bin/die) | Kills processes based on process name. |
| [`doc`](bin/doc) | Builds HTML output from Markdown file. |
| [`faff`](bin/faff) | Sleeps for the given number of seconds, showing a progress bar. |
| [`flip`](bin/flip) | Flips input upside down. |
| [`giphy`](bin/giphy) | Gets a random gif from giphy and shows it via imgcat. |
| [`git_authors`](bin/git_authors) | Git script for discovering who wrote the code at the current workin... |
| [`git_ltr`](bin/git_ltr) | Lists (a-la 'ls -ltr') git controlled source files in current direc... |
| [`git_name_change`](bin/git_name_change) | Clones a repo then changes the name and email address in entire his... |
| [`git_pretty_log`](bin/git_pretty_log) | Git script for printing beautiful logs. |
| [`git_push_topic`](bin/git_push_topic) | Force updates remote topic branch with local branch. |
| [`git_reauthor`](bin/git_reauthor) | In git, change the author name and/or email of a single commit. |
| [`imgcat`](bin/imgcat) | Like cat but for images. |
| [`install_fonts`](bin/install_fonts) | Installs fonts that I like. |
| [`install_mysql`](bin/install_mysql) | Installs/uninstalls mysql from package. |
| [`jsc`](bin/jsc) | Symbolic link to '/System/Library/Frameworks/JavaScriptCore.framewo... |
| [`lt`](bin/lt) | Run shell command with a timeout. |
| [`macosver`](bin/macosver) | Prints current OS X version information. |
| [`nopw`](bin/nopw) | Enables password-less ssh TO username@remotehost FROM localhost. |
| [`readmeize`](bin/readmeize) | Prepares given image for use in a README.md file. |
| [`root`](bin/root) | Prints the root of the current repository. |
| [`safari_cache`](bin/safari_cache) | Shows current Safari cache. |
| [`safari_clean`](bin/safari_clean) | Cleans Safari caches and saved data on OS X. |
| [`setup`](bin/setup) | Install applications and development environment on an OS X machine. |
| [`setup_odbc`](bin/setup_odbc) | Sets up ODBC. |
| [`share`](bin/share) | Easy way to manage temporary web shares. |
| [`show_dircolors`](bin/show_dircolors) | Shows example output based on current dircolors settings. |
| [`slept`](bin/slept) | Get time OS X system last went to sleep. |
| [`smongo`](bin/smongo) | Opens mongo shell to master node. |
| [`uninstall_homebrew`](bin/uninstall_homebrew) | Uninstalls Homebrew. |
| [`uninstall_macports`](bin/uninstall_macports) | Uninstalls MacPorts. |
| [`usages`](bin/usages) | Prints out documentation and usages for utilities. |
| [`woke`](bin/woke) | Get time OS X system last woke from sleep. |
| [`xdie`](bin/xdie) | Kills processes based on their window title. |
| [`xf`](bin/xf) | Extract common file formats. |
| [`yaml2json`](bin/yaml2json) | Converts yaml input to json output. |
| [`youtube2mp3`](bin/youtube2mp3) | Downloads the audio from a youtube video given the URL. |

# What does `setup all` install?

Glad you asked! `setup all` will go through the following steps one by one. For the steps that
install packages/formulas/casks/whatever, see below for the list of included items.

| Step | Description |
| --- | --- |
| osx | Override OS X defaults settings and configuration |
| xcode | Ensure that Xcode Command Line Tools are installed |
| java | Ensure that Apple's java for OS X is installed |
| brew | Ensure Homebrew installed and formulas upgraded |
| cask | Ensure Homebrew Casks are installed |
| atom | Ensure Atom installed via Homebrew Cask and apm packages are upgraded |
| zsh | Ensure shell is latest version of zsh from Homebrew |
| python | Upgrade/Install Anaconda, pip packages, and conda packages |
| gem | Upgrade/Install gem packages and rubygems-update package |
| node | Ensure Node modules are installed |
| go | Ensure Go packages are installed |
| env | Update to latest all submodules in your dotfiles |

Homebrew Formulas: autoconf, automake, bash, bison, boost, clang-format, cloog, 
cmake, colordiff, coreutils, cppunit, csv-fix, dmd, docker, docker-compose, 
doxygen, erlang, faac, fasd, ffmpeg, fontconfig, freetype, gd, gdbm, geoip, 
gettext, ghostscript, gifify, gifsicle, git, git-flow, git-review, glib, gmp, 
gmp4, gnu-sed, gnu-tar, gnupg, gradle, htop-osx, hub, id3lib, id3v2, 
imagemagick, isl, jasper, jbig2dec, jhead, jo, jpeg, jq, lame, libevent, 
libffi, libgpg-error, libgphoto2, libicns, libksba, libmpc, libpng, libssh2, 
libtiff, libtool, libusb, libusb-compat, libvo-aacenc, libyaml, little-cms2, 
lzlib, makedepend, maven, md5sha1sum, memcached, mongodb, mpfr, mysql, ncftp, 
nginx, no-more-secrets, node, onepass, oniguruma, openssl, ossp-uuid, pandoc, 
pcre, pidof, pkg-config, plotutils, pngquant, postgresql, rabbitmq, readline, 
redis, rust, s3cmd, sane-backends, scons, sdl2, sdl2_image, shellcheck, 
sloccount, spark, sqlite, sqliteodbc, storm, swig, tree, unixodbc, unrar, 
vramsteg, watch, wdiff, webp, wget, wxmac, x264, xvid, xz, yaml-cpp, 
youtube-dl, zeromq, zookeeper, zsh

Homebrew Casks: 1password, adium, amazon-music, atom, audacity, 
balsamiq-mockups, battle-net, caffeine, clamxav, cyberduck, dbvisualizer, 
disk-inventory-x, dropbox, evernote, fantastical, firefox, flux, google-chrome, 
google-hangouts, hipchat, iexplorer, istumbler, iterm2, java, kaleidoscope, 
lingon-x, lisanet-gimp, mactex, mysqlworkbench, oclint, robomongo, silverlight, 
skype, slack, snes9x, soundflower, sourcetree, spectacle, spotify, steam, 
sublime-text, texstudio, transmission, vagrant, virtualbox, vlc, whatsapp, 
xquartz

Atom Packages: MagicPython, activate-power-mode, aesthetic-ui, atom-beautify, 
atom-isort, atom-language-avro, auto-update-packages, autocomplete-python, 
base16-syntax, column-select, cursor-indicator, event-watch, file-icons, 
force-tab, format-shell, highlight-selected, indent-guide-improved, jumpy, 
language-applescript, language-babel, language-cmake, language-diff, 
language-docker, language-groovy, language-json, language-latex, 
language-restructuredtext, language-rust, language-scala, line-length-break, 
linter, linter-clang, linter-coffeelint, linter-csslint, linter-docker, 
linter-erb, linter-eslint, linter-flake8, linter-jsonlint, linter-just-say-no, 
linter-raml, linter-rubocop, linter-shellcheck, linter-tidy, linter-write-good, 
markdown-toc, minimap, minimap-find-and-replace, minimap-git-diff, 
minimap-highlight-selected, minimap-selection, multi-wrap-guide, native-ui, 
no-title-bar, nvatom, pretty-json, python-yapf, raml, red-wavy-underline, 
script, set-syntax, soft-wrap-indicator, sort-lines, standard-formatter, 
tab-control, tabs-to-spaces, toggle-quotes, trailing-spaces

Pip Packages: git-sweep3k, httpie, inflection, isort, patch, 
python-json-logger, termcolor, yapf

Conda Packages: abstract-rendering, alabaster, anaconda, anaconda-client, 
anaconda-navigator, appnope, appscript, argcomplete, astroid, astropy, babel, 
backports, beautifulsoup4, bitarray, blaze-core, bokeh, boto, bottleneck, cffi, 
chest, click, cloudpickle, clyent, colorama, conda, conda-build, conda-env, 
conda-manager, configobj, contextlib2, cryptography, curl, cycler, cython, 
cytoolz, dask, datashape, decorator, dill, docutils, dynd-python, entrypoints, 
et_xmlfile, fastcache, filelock, flake8, flask, flask-cors, freetype, futures, 
get_terminal_size, gevent, greenlet, h5py, hdf5, heapdict, icu, idna, 
imagesize, ipykernel, ipython, ipython-notebook, ipython-qtconsole, 
ipython_genutils, ipywidgets, itsdangerous, jbig, jdcal, jedi, jinja2, jpeg, 
jsonschema, jupyter, jupyter_client, jupyter_console, jupyter_core, launcher, 
lazy-object-proxy, libdynd, libpng, libtiff, libxml2, libxslt, llvmlite, 
locket, lxml, markupsafe, matplotlib, mccabe, mistune, mkl, mkl-service, 
mpmath, multipledispatch, nb_conda, nb_conda_kernels, nbconvert, nbformat, 
nbpresent, networkx, nltk, node-webkit, nose, notebook, numba, numexpr, numpy, 
odo, openpyxl, openssl, pandas, partd, path.py, pathlib2, patsy, pep8, pexpect, 
pickleshare, pillow, pip, pkginfo, ply, prompt_toolkit, psutil, ptyprocess, py, 
pyasn1, pycosat, pycparser, pycrypto, pycurl, pyflakes, pygments, pylint, 
pymongo, pyopenssl, pyparsing, pyqt, pytables, pytest, python, python-dateutil, 
python.app, pytz, pyyaml, pyzmq, qt, qtawesome, qtconsole, qtpy, readline, 
redis, redis-py, requests, rope, ruamel_yaml, scikit-image, scikit-learn, 
scipy, setuptools, simplegeneric, singledispatch, sip, six, snowballstemmer, 
sockjs-tornado, sphinx, sphinx_rtd_theme, spyder, spyder-app, sqlalchemy, 
sqlite, statsmodels, sympy, terminado, tk, toolz, tornado, traitlets, 
unicodecsv, wcwidth, werkzeug, wheel, widgetsnbextension, wrapt, xlrd, 
xlsxwriter, xlwings, xlwt, xz, yaml, zeromq, zlib

Gem Packages: actionmailer, actionpack, actionview, activejob, activesupport, 
bigdecimal, blankslate, builder, bundler-unload, claide, cocoapods, 
cocoapods-core, cocoapods-deintegrate, cocoapods-downloader, cocoapods-plugins, 
cocoapods-search, cocoapods-stats, cocoapods-trunk, cocoapods-try, 
coffee-script, coffee-script-source, colorator, colored, commander, 
concurrent-ruby, erubis, escape, execjs, executable-hooks, ffi, 
forwardable-extended, fourflusher, fuzzy_match, gem-wrappers, globalid, 
highline, i18n, io-console, jekyll, jekyll-sass-converter, jekyll-watch, json, 
kramdown, liquid, listen, lolcat, loofah, mail, mercenary, mime-types, 
mime-types-data, mini_portile2, minitest, molinillo, nap, net-telnet, netrc, 
nokogiri, paint, parslet, pathutil, pkg-config, power_assert, psych, 
puppet-lint, rack, rack-test, rails-deprecated_sanitizer, rails-dom-testing, 
rails-html-sanitizer, rake, rb-fsevent, rb-inotify, rdoc, rouge, rubocop, 
ruby_dep, rubygems-bundler, rubygems-update, rvm, safe_yaml, sass, test-unit, 
thread_safe, toml, trollop, tzinfo, xcodeproj

Node Modules: JSON, coffee-script, coffeelint, cson, decaffeinate, dockerlint, 
eslint, js-beautify, json-stable-stringify, moment, nesh, raml2html, standard, 
tmpin

Go Packages: github.com/alecthomas/gometalinter, 
github.com/alecthomas/template, github.com/alecthomas/units, 
github.com/google/shlex, github.com/mvdan/sh/cmd/shfmt, 
github.com/mvdan/sh/syntax, github.com/stretchr/testify

# License

```
Inconsolata font Created by Raph Levien using his own tools and FontForge.
Copyright 2006 Raph Levien. Released under the SIL Open Font License.


The MIT License (MIT)

Copyright (c) 2017, lexicalunit@lexicalunit.com

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

