# Synopsis
I hate installing, configuring, and updating software on my computer. Especially when I'm using a new machine, or sshing into a remote system. I've automated as much of that process as I can, keeping everything as lightweight as possible.

### Do Everything:

```bash
git clone https://github.com/lexicalunit/setup.git
setup/install
setup/bin/setup -f all
```

If you don't even have `git` yet, try something like:

```bash
curl -LOks https://github.com/lexicalunit/setup/tarball/master
mkdir setup && tar xvzf master --strip 1 -C setup
setup/install
setup/bin/setup -f all
```

# Usage
1. Clone this repository and change directories into it and then run [`./install`](install) first to setup your environment (dotfiles and other items) and [`~/bin`](bin) directory and scripts.
1. Source your new environment by opening a new terminal or running [`. ~/.profile`](env/dot_profile).
1. Execute the command [`setup all`](bin/setup) to step through configuration of system settings, installation of applications, and creation of your complete OS X developer environment.

You can also use the root level [`deploy`](deploy) script to automatically run the root level [`install`](install) script on a remote host. If you want to also remotely run [`bin/setup`](bin/setup), you will have to do that by hand as it's an occasionally interactive script.

You can uninstall everything that the root level [`install`](install) script installs by running the root level [`uninstall`](uninstall) script. This won't uninstall anything that you might have installed by running the [`bin/setup`](bin/setup) script.

# Maintenance
* The root level [`update`](update) script can be used periodically to update this repository with any changes made to the system scripts or environment.
* Re-run [`setup all`](bin/setup) to update applications and ensure environment settings are configured properly.

# Why not just use [dotfiles](http://dotfiles.github.io/)?
Github [dotfiles](http://dotfiles.github.io/) is really neat, but it doesn't go far enough for my purposes. I wanted a single command, [`setup all`](bin/setup) to just *do everything* for me with minimal interaction. I also wanted to be able to update and deploy my settings with similar ease. Some of the code in this repository is based on existing [dotfiles](http://dotfiles.github.io/), so you can think of this as a meta-dotfiles repository, tailored to my tastes. It may be possible to clean up this codebase using tools like [fresh](https://github.com/freshshell/fresh), and it may be possible to refactor it as a fork of [dotfiles](http://dotfiles.github.io/). The exploration of these possibilities is left as an exercise to the reader.

# Environment: [`~/env`](env)
Provides installation and configuration of many utilities and applications. Running [`env/install`](env/install) will provide the following features, as well as additional configuration. For more details on what is provided see [the `README.md` for [`~/env`](env)](env/README.md).
* [`My.terminal`](env/My.terminal) and [`Tomorrow Night.terminal`](env/Tomorrow Night.terminal) themes to use in `Terminal.app` or [`iTerm.app`](http://iterm2.com/).
* Application configuration such as Atom and Sublime Text settings.
* Dot files for zsh, bash, dircolors, git, mercurial, vim, python, etc...
* [`sane.css`](env/sane.css) style sheet for annoying websites.

# Utilities: [`~/bin`](bin)
The following tools are installed into your [`~/bin`](bin) directory by the root level [`install`](install) script, or by the [`bin/install`](bin/install) script. These tools will be on your `PATH` if you have ran the root level [`install`](install) script or the [`env/install`](env/install) script. For detailed usage documentation see the [`README.md` for `~/bin`](bin/README.md), or of course just run the tools with the argument `--help`.

| Tool | Usage |
| --- | --- |
| [`alert`](bin/alert) | Provides shell level windowed alerting system. |
| [`api`](bin/api) | Requests a web API resource and pretty prints resulting JSON. |
| [`capture`](bin/capture) | Creates a screenshot of selected window on X11. |
| [`colortest`](bin/colortest) | Prints out an entire color palette of terminal color codes. |
| [`die`](bin/die) | Kills processes based on process name. |
| [`fa`](bin/fa) | Searches a codebase for given pattern. |
| [`ff`](bin/ff) | Symbolic link to '/usr/local/bin/grind' |
| [`flip`](bin/flip) | Flips input upside down. |
| [`fm`](bin/fm) | Find in CMake files. |
| [`git_push_topic`](bin/git_push_topic) | Force updates remote topic branch with local branch. |
| [`install`](bin/install) | Installs everything to ~/bin. |
| [`install_mysql`](bin/install_mysql) | Installs/uninstalls mysql from package. |
| [`jsc`](bin/jsc) | Symbolic link to '/System/Library/Frameworks/JavaScriptCore.framewo... |
| [`lt`](bin/lt) | Run shell command with a timeout. |
| [`macosver`](bin/macosver) | Prints current OS X version information. |
| [`nopw`](bin/nopw) | Enables password-less ssh TO username@remotehost FROM localhost. |
| [`reauthor`](bin/reauthor) | In git, change the author name and/or email of a single commit. |
| [`root`](bin/root) | Prints the root of the current repository. |
| [`s`](bin/s) | Show git status for all directories in current directory. |
| [`safari_cache`](bin/safari_cache) | Shows current Safari cache. |
| [`safari_clean`](bin/safari_clean) | Cleans Safari caches and saved data on OS X. |
| [`setup`](bin/setup) | Install applications and development environment on an OS X machine. |
| [`setup_odbc`](bin/setup_odbc) | Sets up ODBC. |
| [`share`](bin/share) | Easy way to quickly manage temporary web shares. |
| [`slept`](bin/slept) | Get time OS X system last went to sleep. |
| [`smongo`](bin/smongo) | Opens mongo shell to master node. |
| [`uninstall_homebrew`](bin/uninstall_homebrew) | Uninstalls Homebrew completely. |
| [`uninstall_macports`](bin/uninstall_macports) | Uninstalls MacPorts completely. |
| [`update_bin`](bin/update_bin) | Syncs ./bin with ~/bin. |
| [`usages`](bin/usages) | Prints out documentation and usages for utilities. |
| [`woke`](bin/woke) | Get time OS X system last woke from sleep. |
| [`xdie`](bin/xdie) | Kills processes based on their window title. |
| [`xf`](bin/xf) | Extract common file formats. |
| [`yaml2json`](bin/yaml2json) | Converts yaml input to json output. |
| [`youtube2mp3`](bin/youtube2mp3) | Downloads the audio from a youtube video given the URL. |

# License
Copyright (c) 2014, amy@lexicalunit.com
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the <organization> nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Inconsolata font Created by Raph Levien using his own tools and FontForge.
Copyright 2006 Raph Levien. Released under the SIL Open Font License.
