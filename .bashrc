alias sshnet='ssh cloud.camille-hodoul.net'
# launch node http-server on default ip
alias httpsrv='http-server -a 127.0.0.1'

## Colorize the ls output ##
alias ls='ls -G'
 
## Use a long listing format ##
alias ll='ls -la'
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'

alias cd..='cd ..'

# grep egrep fgrep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# list open ports
alias ports='netstat -tulanp'

# get web server headers #
alias header='curl -I'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## auto resume wget
alias wget='wget -c'

# auto sudo npm
alias npm='sudo npm'
