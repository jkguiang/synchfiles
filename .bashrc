if [ "$TERM" != "dumb" ]; then
    dircolors -b 1>/dev/null 2>/dev/null
    # eval $(gdircolors ~/.dir_colors) 2>/dev/null
    if (( $? == 0 )); then
        # if [[ $(uname -a) == Darwin* ]]; then 
            # alias ls='gls --color=auto --ignore=*.{o,d,aux,pcm,cxx,d,nav,snm,pyc,toc} --ignore=AutoDict*'
        # else
            alias ls='ls --color=auto --ignore=*.{d,aux,pcm,d,nav,snm,pyc,toc} --ignore=AutoDict*'
        # fi

    else
        alias ls='ls -G'
    fi
fi

red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
purple=$(tput setaf 6)
# blue=$(tput setaf 4)
blue="\033[38;5;117m"
bold=$(tput bold)
reset=$(tput sgr0)

PS="\[$purple\][\D{%r}]\[$reset$blue\] [\u@\h]\[$reset\]"
if [ -n "$WINDOW" ]; then
    PS+=" \[\033[01;33m\][${STY##*.}]\[\e[0m\]"
fi
PS+=" \w > "
PS1=$PS

#Scripts
export PATH=$PATH:$HOME/Scripts

#Navigation Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'
alias ..........='cd ../../../../../../../..'

#General Aliases
alias chrome="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"

#SSH Aliases
alias killssh="ps aux | grep ssh | grep localhost | awk '{print $2}' | sudo xargs kill -9"
alias tunnel92='ssh -N -f -L localhost:8892:localhost:8892 jguiang@uaf-1.t2.ucsd.edu'
alias tunnelino='ssh -N -f -L 8892:jguiang@uafino.physics.ucsb.edu:8892 -N jguiang@uaf-1.t2.ucsd.edu'
alias uaf1='ssh -XY jguiang@uaf-1.t2.ucsd.edu'
alias uaf3='ssh -XY jguiang@uaf-3.t2.ucsd.edu'
alias uaf4='ssh -XY jguiang@uaf-4.t2.ucsd.edu'
alias uaf7='ssh -XY jguiang@uaf-7.t2.ucsd.edu'
alias uaf8='ssh -XY jguiang@uaf-8.t2.ucsd.edu'
alias uaf10='ssh -XY jguiang@uaf-10.t2.ucsd.edu'
alias lxplus='ssh jguiang@lxplus.cern.ch'
alias awsmicro='ssh -i "chronoscad.pem" ubuntu@ec2-18-223-185-253.us-east-2.compute.amazonaws.com'
alias awsvpc='ssh -i LightsailDefaultPrivateKey.cer bitnami@54.68.13.51'

#Virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper_lazy.sh

#Project Aliases
alias my_website='cd ~/Projects/my_website; workon my_website'

#ls Alisases
alias ll='ls -l'
alias la='ls -a'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
