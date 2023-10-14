# Miscellaneous Dotfiles

* [Summary](#summary)
* [Installation](#installation)
    - [ZSH](#zsh)
    - [Vim](#vim)
    - [Git](#git)
    - [Iterm2](#iterm2)
    - [Rectangle](#rectangle)

## Summary

I live by the terminal, and therefore by my personal configs. Here is a collection of them.

<hr>

## Installation

### ZSH

```bash
ln -s ~/git/personal/Dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/git/personal/Dotfiles/zsh/zsh_aliases ~/.zsh_aliases
ln -s ~/git/personal/Dotfiles/zsh/zsh_environment ~/.zsh_environment
```

### Vim

```bash
ln -s ~/git/personal/Dotfiles/vim/vimrc ~/.vimrc
```

### Git

```bash
ln -s ~/git/personal/Dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/git/personal/Dotfiles/git/gitignore ~/.gitignore
```

### Iterm2

1. Navigate to: `Iterm2 -> Settings -> General -> Preferences`
2. Select `Load preferences from a custom folder or URL`
3. Enter `/Users/tj/git/personal/dotfiles/iterm2`
4. Set `Save changes` to `Automatically`. 

### Rectangle

1. Navigate to: `Cogwheel -> Import`
2. Select `~/git/personal/Dotfiles/rectangle/RectangleConfig.json`

### iStat Menus

1. Navigate to: `File -> Import Settings`
2. Select `~/git/personal/Dotfiles/istat_menus/iStat_Menus_Settings.ismp`
3. Navigate to: `iStat Menus -> Registration`
4. Enter the license key. 
