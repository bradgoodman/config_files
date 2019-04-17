export M2_HOME=/usr/local/bin/apache-maven-3.5.2
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home

# Path to your oh-my-zsh installation.
export ZSH=/Users/lanid/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cobalt2"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(... cf)
plugins=(… zsh-completions)
plugins=(bosh)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source /usr/local/share/antigen/antigen.zsh
source /Users/lanid/.oh-my-zsh/plugins/cf/cf-autocomplete
source /Users/lanid/.oh-my-zsh/plugins/git/git.plugin.zsh

# Set command line to VI
set -o vi

# Adding for recursive lookup
bindkey "^R" history-incremental-search-backward

# User configuration
#export PATH="/usr/local/opt/python/libexec/bin:$PATH"
#--------------------------------------
#   General Alias
#--------------------------------------
alias edit='code'
alias find-app='~/Git/cloud-utilities/find_app.py'
alias dirs='dirs -v'
alias ls='ls -alhG'
alias reset-network='~/Scripts/stop-socks-proxy.sh'
#--------------------------------------
#   Reload commands
#--------------------------------------
alias reload="source ~/.zshrc"
#--------------------------------------
#   Password Prompt
#--------------------------------------
alias password='node ~/Scripts/node-menu/index.js'
#--------------------------------------
#   CNTLM Proxy
#--------------------------------------
alias start-cntlm='source ~/Scripts/cntlm-start.sh'
alias stop-cntlm='source ~/Scripts/cntlm-stop.sh'
alias generate-hash='cntlm -IM http://www.google.com'
#--------------------------------------
#   Docker
#--------------------------------------
alias start-grafana='docker run -d -p 3000:3000 grafana/grafana'
alias start-influx='docker run --name=influxdb -d -p 8086:8086 influxdb'
