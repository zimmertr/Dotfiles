##############################
#########ZSH SETTINGS#########
##############################
export ZSH=/Users/tzimmerman/.oh-my-zsh
HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=30
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git brew gitfast git-extras git-flow git-flow-avh git-hubflow git_remote_branch gradle history)
source $ZSH/oh-my-zsh.sh
source /Users/tzimmerman/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export HOMEBREW_GITHUB_API_TOKEN=2d8c3ed59014e0d62548e2663580d9b6d5d7cb73
export CLICOLOR=1
fpath=(/usr/local/share/zsh-completions $fpath)


##############################
####PROMPT CUSTOMIZATIONS#####
##############################
autoload -U promptinit
export PS1='
%F{cyan}%BCom: %M%f
%F{magenta}%BDir: %d
%F{blue}%BUsr: %n - %B%w,%@%f >%b%f'


##############################
#########ZSH ALIASES##########
##############################

##############ZSH#############
alias updatezsh='source ~/.zshrc'
alias aliases='vim ~/.zshrc'

##########HOMEBERW############ 
alias install='brew install'
alias search='brew search'
alias uninstall='brew remove'
alias update='brew update'

###########DIRECTORY##########
alias ...='cd ../..'
alias cdd='cd ~/Downloads'
alias cdr='cd /'
alias ls='ls -laGFhi'
alias mountaltas='sudo mount atlas-cml:/mnt/vol1/share /mnt/atlas-cml'
alias size='du -hs * | gsort -hr'

########SMART COMMANDS########
alias filesrec='sudo find . -type f | wc -l' #Recursively determine number of files in filesystem.
alias flush='sudo arp -d -a; dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias externalip='curl ifconfig\.me/ip' #find external ip
alias internalip='ipconfig getifaddr en0'
alias sublime='subl'
alias clearh="echo -ne '\033]50;ClearScrollback\a'"
alias weather='curl -4 http://wttr.in/Grand%20Rapids'
alias moon='curl -4 http://wttr.in/moon'

########POWER OPTIONS#########
alias shutdown='sudo poweroff'
alias reboot='sudo reboot'
alias suspend='sudo pm-suspend'

#########TEXT FILES#########
alias todo='vim ~/Dropbox/Miscellaneous/Todo.txt'
alias school='vim ~/Dropbox/Miscellaneous/School.txt'
alias work='vim ~/Dropbox/Miscellaneous/Work.txt'
alias money='vim ~/Dropbox/Miscellaneous/Money.txt'
alias lab='vim ~/Dropbox/Miscellaneous/Lab.txt'

#############SSH#############
alias sshjupiter='ssh -p 2022 tj@tjzimmerman.com'
alias ws='xfreerdp -d cis -u zimmerth -g 1440x900 winserv.cis.gvsu.edu'
alias ssheos='ssh -X zimmerth@eos04.cis.gvsu.edu'
alias eo='xfreerdp --no-nla -d bluemedora.localnet -u bluemedora\\tzimmerman eo-win12'
export PATH="/usr/local/sbin:$PATH"

PATH="/Users/tzimmerman/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/tzimmerman/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/tzimmerman/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/tzimmerman/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/tzimmerman/perl5"; export PERL_MM_OPT;
