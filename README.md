# Synopsis
I hate installing, configuring, and updating software on my computer. Especially when I'm using a new machine, or sshing into a remote system. I've automated as much of that processes as I can, keeping everything a lightweight as possible.

# Usage
1. Run the root level [`install`](install) script first to setup your environment and [`~/bin`](bin) directory.
1. Run the root level [`setup_osx`](setup_osx) script to configure OS X preferences.
1. Install Apple's Command Line Tools directly, or install Xcode and enable Command Line Tools in the application preferences.
1. Run the [`~/bin/install_dev`](bin/install_dev) script to install a complete developer environment.

You can also use the root level [`deploy`](deploy) script to automatically run the root level [`install`](install) script on a remote host.

# Maintenance
* The root level [`update`](update) script can be used periodically to update the repository with any changes.
* Re-run [`install_dev`](bin/install_dev) to update development environment.

# Environment
* [`My.terminal`](env/My.terminal) and [`Tomorrow Night.terminal`](env/Tomorrow Night.terminal) themes to use in `Terminal.app` or [`iTerm.app`](http://iterm2.com/).
* Application configuration such as Atom and Sublime Text settings.
* Dot files for zsh, bash, dircolors, git, mercurial, vim, python, etc...
* [`sane.css`](env/sane.css) style sheet for annoying websites.

# Utilities
The following tools are installed into your [`~/bin`](bin) directory by the root level [`install`](install) script, or by the [`bin/install`](bin/install) script. These tools will be on your `PATH` if you have ran the root level [`install`](install) script or the [`env/install`](env/install) script. For detailed usage documentation see the [`README.md` for `~/bin`](bin/README.md), or of course just run the tools with the argument `--help`.

| Tool | Usage |
| --- | --- |
| [`alert`](bin/alert) | Provides shell level windowed alerting system. |
| [`api`](bin/api) | Requests a web API resource and pretty prints resulting JSON. |
| [`capture`](bin/capture) | Creates a screenshot of selected window on X11. |
| [`cloc`](bin/cloc) | cloc -- Count Lines of Code |
| [`colortest`](bin/colortest) | Prints out an entire color palette of terminal color codes. |
| [`die`](bin/die) | Kills processes based on process name. |
| [`emake.d`](bin/emake.d) | Builds codebase externally. |
| [`fa`](bin/fa) | Searches a codebase for given pattern. |
| [`ff`](bin/ff) | Symbolic link to '/usr/local/bin/grind' |
| [`flip`](bin/flip) | Flips input upside down. |
| [`fm`](bin/fm) | Find in CMake files. |
| [`git_push_topic`](bin/git_push_topic) | Force updates remote topic branch with local branch. |
| [`install`](bin/install) | Installs everything to ~/bin. |
| [`install_atom`](bin/install_atom) | Installs Atom IDE with custom style and packages. |
| [`install_dev`](bin/install_dev) | Installs development environment on OS X machines. |
| [`install_mysql`](bin/install_mysql) | Installs/uninstalls mysql from package. |
| [`jsc`](bin/jsc) | Symbolic link to '/System/Library/Frameworks/JavaScriptCore.framewo... |
| [`macosver`](bin/macosver) | Prints current OS X version information. |
| [`nopw`](bin/nopw) | Enables password-less ssh TO username@remotehost FROM localhost. |
| [`reauthor`](bin/reauthor) | In git, change the author name and/or email of a single commit. |
| [`root`](bin/root) | Prints the root of the current repository. |
| [`s`](bin/s) | Show git status for all directories in current directory. |
| [`safari_cache`](bin/safari_cache) | Shows current Safari cache. |
| [`safari_clean`](bin/safari_clean) | Cleans Safari caches and saved data on OS X. |
| [`setup_odbc`](bin/setup_odbc) | Sets up ODBC. |
| [`share`](bin/share) | Easy way to quickly manage temporary web shares. |
| [`slept`](bin/slept) | Get time OS X system last went to sleep. |
| [`smongo`](bin/smongo) | Opens mongo shell to master node. |
| [`subl`](bin/subl) | Symbolic link to '/Applications/Sublime Text.app/Contents/SharedSup... |
| [`timeout_test`](bin/timeout_test) | Run shell command with a timeout. |
| [`uninstall_homebrew`](bin/uninstall_homebrew) | Uninstalls Homebrew completely. |
| [`uninstall_macports`](bin/uninstall_macports) | Uninstalls MacPorts completely. |
| [`update_bin`](bin/update_bin) | Syncs ./bin with ~/bin. |
| [`usages`](bin/usages) | Prints out documentation and usages for utilities. |
| [`woke`](bin/woke) | Get time OS X system last woke from sleep. |
| [`xdie`](bin/xdie) | Kills processes based on their window title. |
| [`xf`](bin/xf) | Extract common file formats. |
| [`yaml2json`](bin/yaml2json) | Converts yaml input to json output. |
