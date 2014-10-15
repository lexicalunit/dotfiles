Usage
===

1. Run the root level `install` script first to setup your environment and `~/bin` directory.
2. Run the root level `setup_osx` script to configure OS X preferences.
3. Install Apple's Command Line Tools directly, or install Xcode and enable Command Line Tools in the application preferences.
4. Run the `~/bin/install_dev` script to install a complete developer environment.

You can also use the root level `deploy` script to automatically install on a remote host.


Maintenance
===
* The root level `update` script can be used periodically to update the repository with any changes.
* Run `install_dev` to update development invronment.


Environment
===
* `My.terminal` and `Tomorrow Night.terminal` themes to use in `Terminal.app`.
* Sublime Text 3 settings.
* Dot files for bash, dircolors, git, mercurial, vim, python, etc...
* `sane.css` style sheet for annoying websites.

~/bin
===
| tool | usage |
| --- | --- |
| `alert` | Provides shell level windowed alerting system. |
| `api` | Requests a web API resource and pretty prints resulting JSON. |
| `capture` | Captures a window for a screen shot on X11 systems. |
| `clean_safari` | Cleans Safari caches and saved data on OS X. |
| `cloc` | Count Lines of Code. |
| `colortest` | Prints out a terminal color test. |
| `die` | Kills processes based on process name. |
| `edit` | Opens files in Sublime Text editor or vim if that's not available. |
| `emake.d` | Builds codebase externally. |
| `fa` | Find All -- uses grin to search source files. |
| `ff` | Symbolic link to '/usr/local/bin/grind' |
| `flip` | Flips input upside down. |
| `fm` | Find in CMake files. |
| `git_push_topic` | Force updates remote topic branch with local branch. |
| `install` | Installs everything to ~/bin. |
| `install_dev` | Installs development environment on OS X machines. |
| `install_mysql` | Installs/uninstalls mysql from package. |
| `jsc` | Symbolic link to '/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc' |
| `linkqual` | prints the current link quality as a terminal spark graph. |
| `macosver` | Prints current OS X version information. |
| `nopw` | Sets up passwordless login TO the given username@remotehost FROM the current system. |
| `opendiff-w` | Provides tooling for OpenDiff. |
| `root` | Prints the root of the current repository. |
| `s` | Show git status for all directories in current directory. |
| `safari_cache` | Shows current Safari cache. |
| `setup_odbc` | Sets up ODBC. |
| `share` | Easy way to quickly manage temporary web shares. |
| `slept` | Get time OS X system last went to sleep. |
| `smongo` | Opens mongo shell to master node. |
| `subl` | Symbolic link to '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' |
| `timeout_test` | Run shell command with a timeout. |
| `uninstall_homebrew` | Uninstalls Homebrew completely. |
| `uninstall_macports` | Uninstalls MacPorts completely. |
| `update_bin` | updates bin with whatever new changes are found in the current environment. |
| `update_sublimeclang` | Updates the SublimeClang preferences file with the current preferences. |
| `usages` | Prints out usages for ~/bin tools. |
| `woke` | Get time OS X system last woke from sleep. |
| `xdie` | Kills processes based on their window title. |
| `xf` | Extract common file formats. |
| `yaml2json` | converts yaml input to json output. |
