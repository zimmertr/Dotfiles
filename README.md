#zsh Configuration

As someone that uses a terminal every day for both work and play, I have found that zsh offers me the best experience in terms of speed, customizability, and advanced features. This repository is a collection of my configuration files pertaining to zsh for both home and work as well as my standard vimrc as I didn't know where else to put it.

##My configuration tweaks zsh to my liking by:

- Taking advantage of over 15 plugins including ph-my-zsh, zsh-syntax-highlighting, and more  
- Implementing a heavily customized PS1 prompt that displays:  
	-Current absolute directory  
	-Current username, date, and time  
	-Current git branch (If within repository)  
	-An `S` if you have a `staged` git file (If within repository)  
	-A `D` if you have deleted a file in your repo since your last commit. (If within repository)  
- Utilizing over 35 shell aliases to customize your experience for
	-Managing ZSH  
	-Using Pacman/brew
	-Using systemctl on a systemd-based installation  
	-SSH/VNC  
	-Common unix tools like ls, mount, cd, find, etc.  
	-Power Options  
	-Network tools  
	-And more  
- Disabling automatic updates of zsh  
- Enabling automatic syntax correcting for erroneously typed commands  
- Enabling command execution waiting dots  
- Customizting my .zsh_history file to use the `mm/dd/yyyy` format  
- Disabling hyphen insensitivity  
- Setting Vim as my default editor
- Modifying path variables and many other system settings

##Vim is also configured in the following ways:

- Line numbers are displayed automatically
- Syntax highlighting is enabled
- Set to use the `slate` theme automatically
- Cursorline is enabled
- Wildmenu is enabled

##Screenshot of commands demonstrating configuration
![Alt text](https://raw.githubusercontent.com/zimmertr/zsh-configuration/master/shell.png "Shell demonstrating configuration")
