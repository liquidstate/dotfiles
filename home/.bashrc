#-------------------------------------------------------------
# Source any global settings
#-------------------------------------------------------------
# Global settings
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

# Global bash completions
if [ -d /etc/bash_completion.d/ ]; then
    for i in /etc/bash_completion.d/*; do source $i; done
fi

#-------------------------------------------------------------
# Set basic environment (eg. PATH)
#-------------------------------------------------------------
if [ -d ~/man ]; then export MANPATH="$HOME/man:${MANPATH}"; fi

# Start with a sensible path
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin'

if [ -d ~/bin/packer ]; then export PATH="$HOME/bin/packer:${PATH}"; fi
if [ -d ~/.rvm/bin ]; then export PATH="$HOME/.rvm/bin:${PATH}"; fi

# $HOME/bin should be towards the front of the $PATH
if [ -d ~/bin ]; then export PATH="$HOME/bin:${PATH}"; fi

#-------------------------------------------------------------
# Source all the things
#-------------------------------------------------------------

if [ -f ~/.bashprivate ]; then source ~/.bashprivate; fi

if [ -d ~/.bashrc.d/ ]; then
  for i in ~/.bashrc.d/*; do source $i; done
fi
