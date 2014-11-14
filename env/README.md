# `dot_*`
These dot files will be copied to `~/` with the `dot_` prefix replaced with a `.`. The [`dot_profile`](dot_profile) script is suitable for use with both `zsh` and `bash`. Other profile and rc scripts simply source the main [`dot_profile`](dot_profile) script.

## `dot_profile_*`
These files are not installed by default by the [`install`](install) script. Each will will requires confirmation before it is installed. The intent is that these script provide utilities that either won't work are aren't desired on all platforms.

### [`dot_profile_fuck`](dot_profile_fuck)
Installs the `fuck()` shell function which hilariously kills a running process by process name.

### [`dot_profile_pdfman`](dot_profile_pdfman)
Installs (if supported) the `pman()` and `qman()` shell functions which open man pages in a PDF viewer or Quick View, respectively.

## [`dot_complete`](dot_complete)
Provides `zsh` (through module bashcompinit) and `bash` auto-completion for utilities in [`~/bin`](../bin).

## `atom.*`
Atom editor configuration and settings files to be installed into `~/.atom`.

## [`show_dircolors`](show_dircolors) (and [`colors.tgz`](colors.tgz))
[`colors.tgz`](colors.tgz) is just a tarball containing examples of many different kinds of files, for use with the script [`show_dircolors`](show_dircolors) to help when adjusting dircolor settings. Simply run the [`show_dircolors`](show_dircolors) script to get a representative output of `ls` with your color settings applied.

## [`dot_gitconfig`](dot_gitconfig), [`dot_hgignore`](dot_hgignore), and [`dot_hgrc`](dot_hgrc)
Configuration for the `git` and `hg` source control tools.

## [`dot_hushlogin`](dot_hushlogin)
Instructs Apple's `Terminal.app` to not print an annoying login message when a new terminal window is opened.

## [`dot_inputrc`](dot_inputrc)
Configures the readline settings for `bash`. Not used for `zsh`.

## [`dot_pythonrc.py`](dot_pythonrc.py)
Configures interactive Python interpreters.

## [`dot_shell_control`](dot_shell_control)
This file is not sourced by [`dot_profile`](dot_profile), but it is used by a number of utilities in [`~/bin`](../bin) as well as install and update scripts. It provides useful functions such as `run()`, `show()`, `ask()`, and `abort()` common to many shell scripts.

## [`dot_toprc`](dot_toprc)
Makes top output much more useful on Linux systems. On OS X another tool like `htop` should be used instead.

## [`dot_vimrc`](dot_vimrc)
Configures `vim` editor, adding useful aliases and modifying default settings.

## [`Inconsolata.otf`](Inconsolata.otf)
Inconsolata font Created by Raph Levien using his own tools and FontForge.
Copyright 2006 Raph Levien. Released under the SIL Open Font License.

## `*.termnial`
These files provide themes for use by [`iTerm.app`](http://iterm2.com/) or `Terminal.app`.

## `*.sublime-settings`
Sublime Text editor configuration and settings files to be installed into your Sublime Text settings directory under `~/Library/Application Support`.

## [`sane.css`](sane.css)
Disables really annoying HTML and CSS settings such as blink, marquee, and horrible color schemes.
