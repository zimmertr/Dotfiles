############################
########ZSH SETTINGS########
############################
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"
HYPHEN_INSENSITIVE="true"

export VISUAL=vim
export EDITOR="$VISUAL"
export UPDATE_ZSH_DAYS=30
export CLICOLOR=1
export ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin"

setopt correctall
autoload -Uz compinit
compinit
autoload -Uz vcs_info
autoload -U promptinit
source /home/tj/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 
zstyle :compinstall filename '/home/tj/.zshrc'


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
plugins=(gitfast)
plugins=(gitextras)
plugins=(gitflow)
plugins=(gitflow-avh)
plugins=(git-hubflow)
plugins=(git_remote_branch)
plugins=(gradel)
plugins=(history)
plugins=(~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh



############################
###Prompt Customizations####
############################

#######Old PS1 Configuration
#autoload -U promptinit
#export PS1='
#%F{cyan}%BCom: %M%f
#%F{magenta}%BDir: %d
#%F{blue}%n: %B%w,%@%f >%b%f'

#######New PS1 Configuration

setopt prompt_subst

zstyle ':vcs_info:*' stagedstr '- S' 
zstyle ':vcs_info:*' unstagedstr 'D' 
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%F{251}[%F{203}%b%F{251}|%F{2}%a%F{3}]%f '
zstyle ':vcs_info:*' formats \
      '%F{white}[%F{cyan}%b%F{white}] %F{2}%c%F{3}%u%f'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:*' enable git 
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        [[ $(git ls-files --other --directory --exclude-standard | sed q | wc -l | tr -d ' ') == 1 ]] ; then
    hook_com[unstaged]+='%F{1}??%f'
fi
}

precmd () { vcs_info }
#PROMPT='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_} %f%# '

export PS1='
%F{magenta}%BDir: %d ${vcs_info_msg_0_}
%F{blue}%BUsr: %n - %B%w, %@%f >%b%f '



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
alias upgrade='pacaur -Syu --noconfirm' 
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
alias rdpio='xfreerdp -g 1600x900 -d sol.milkyway -u Administrator io'

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
alias shutdown='sudo poweroff'
alias reboot='sudo reboot'
alias suspend='sudo pm-suspend'
alias externalip='wget http://ipinfo.io/ip -qO -' #find external ip
alias getips="nmap -nsP 192.168.1.1/24 | grep '192.168.1.*' | awk '{print $5}'"
