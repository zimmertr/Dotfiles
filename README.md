# Miscellaneous Dotfiles

* [Summary](#summary)
* [Installation](#installation)
    - [Homebrew](#homebrew)
    - [ZSH](#zsh)
    - [Vim](#vim)
    - [Sublime](#sublime)
    - [Git](#git)
    - [Iterm2](#iterm2)
    - [Rectangle](#rectangle)
    - [iStat Menus](#istat-menus)

## Summary

I live by the terminal, and therefore by my personal configs. Here is a collection of them.

<hr>

## Installation

### Homebrew

macOS only. Linux uses its own package lists.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file=~/git/personal/Dotfiles/Brewfile
kubectl krew install neat get-all
```

Add two spaces to the dock:

```bash
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
killall Dock
```

### ZSH

The ZSH and Git files work on both macOS and Linux. Anything OS specific is guarded, and plugins are found under Homebrew or `/usr/share`.

Install Oh My Zsh first, without letting it replace `.zshrc`:

```bash
RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Then link the files. `ln -sf` replaces any file already there, so check the repo copy has everything you need first.

```bash
ln -sf ~/git/personal/Dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/git/personal/Dotfiles/zsh/zsh_aliases ~/.zsh_aliases
ln -sf ~/git/personal/Dotfiles/zsh/zsh_functions ~/.zsh_functions
ln -sf ~/git/personal/Dotfiles/zsh/zsh_environment ~/.zsh_environment
```

### Vim

```bash
ln -sf ~/git/personal/Dotfiles/vim/vimrc ~/.vimrc
```

### Sublime

```bash
ln -sf ~/git/personal/Dotfiles/sublime/sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings
ln -sf ~/git/personal/Dotfiles/sublime/sublime-keymap ~/Library/Application\ Support/Sublime\ Text/Packages/User/Default\ \(OSX\).sublime-keymap
```

Install the packages in `sublime/sublime-packages` through Package Control.

### Git

```bash
ln -sf ~/git/personal/Dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/git/personal/Dotfiles/git/gitignore ~/.gitignore
```

### Iterm2

1. Navigate to: `Iterm2 -> Settings -> General -> Preferences`
2. Select `Load preferences from a custom folder or URL`
3. Enter `/Users/tj/git/personal/Dotfiles/iterm2`
4. Set `Save changes` to `Automatically`. 

### Rectangle

1. Navigate to: `Cogwheel -> Import`
2. Select `~/git/personal/Dotfiles/rectangle/RectangleConfig.json`

### iStat Menus

1. Navigate to: `File -> Import Settings`
2. Select `~/git/personal/Dotfiles/istat_menus/iStat_Menus_Settings.ismp`
3. Navigate to: `iStat Menus -> Registration`
4. Enter the license key. 

To refresh the file, use `File -> Export Settings`, then delete the `license` entry from the export before committing. It holds the license email and serial.
