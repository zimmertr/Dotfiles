############################
########ZSH SETTINGS########
############################
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"
export VISUAL=vim
export EDITOR="$VISUAL"

############################
##########PLUGINS###########
############################
plugins=(git)
plugins=(dircycle)
plugins=(command-not-found)
plugins=(last-working-dir)
plugins=(lol)
plugins=(nyan)
plugins=(rand-quote)
source $ZSH/oh-my-zsh.sh


############################
#######USER SETTINGS########
############################
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin"
export PATH=$PATH:~/.scripts
setopt correctall
autoload -Uz compinit
compinit
plugins=(~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting)
source /home/tj/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 


############################
###Prompt Customizations####
############################

#PS1
autoload -U promptinit
export PS1='
%F{cyan}%BCom: %M%f
%F{magenta}%BDir: %d
%F{blue}%n: %B%w,%@%f >%b%f'


############################
########ZSH ALIASES#########
############################

########ZSH Things##########
alias updatezsh='source ~/.zshrc'
alias aliases='vim ~/.zshrc'

#########Package Things#########
alias install='pacaur -S'
alias installpkg='pacaur -U' 
alias uninstall='pacaur -R'
alias upgrade='pacaur -Syu' 
alias search='pacaur -Ss' #Search default repository for packages
alias info='pacaur -Si' #Return information on a given package.
alias installed='pacaur -Qet' #List all installed packages.
alias fixlock='sudo rm -rf /tmp/pacaurtmp-*' #Remove the lock generated when interrupting Pacman.

######SystemCTL Stuff#######
alias senable='sudo systemctl enable'
alias srestart='sudo systemctl restart'
alias sstatus='sudo systemctl status'
alias sstop='sudo systemctl stop'
alias sstart='sudo systemctl start'

##########SSH/VNC###########
alias ws='xfreerdp -g 1920x1080 winserv.cis.gvsu.edu'
alias ssheos='ssh -X zimmerth@eos04.cis.gvsu.edu'
alias rdpio='xfreerdp -g 1920x1080 -d sol.milkyway -u Administrator io'

#########Text Files#########
alias todo='vim /media/Data/Dropbox/Miscellaneous/Todo.txt'
alias school='vim /media/Data/Dropbox/Miscellaneous/School.txt'
alias work='vim /media/Data/Dropbox/Miscellaneous/Work.txt'
alias money='vim /media/Data/Dropbox/Miscellaneous/Money.txt'
alias lab='vim /media/Data/Dropbox/Miscellaneous/Lab.txt'

######Modified Programs#####
alias mount='mount | column -t'
alias ls='clear;ls -alGFirth --color'
alias ...='cd ../..'

######Directory Things######
alias filesrec='sudo find . -type f | wc -l' #Recursively determine number of files in filesystem.
alias files='ls -F |grep -v / | wc -l' #Determine number of files in current directory
alias size='du -hs * | sort -hr'
alias cdd='cd ~/Desktop'
alias cdn='cd /media/NetDrive/'
alias cdda='cd /media/Data/'

#######Miscellaneous########
alias website='wget --limit-rate=200k --no-clobber --convert-links --random-wait -r -p -E -e robots=off -U mozilla'
alias fix='sudo killall cinnamon && sudo cinnamon --replace'
alias shutdown='sudo poweroff'
alias reboot='sudo reboot'
alias suspend='sudo pm-suspend'
alias externalip='wget http://ipinfo.io/ip -qO -' #find external ip
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tj/.zshrc'
