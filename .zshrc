HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# zsh stuff
zstyle :compinstall filename '/home/sam/.zshrc'
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# Set prompt
PROMPT="%K{white}%F{black}%n %B%K{white}%F{black}%~%f%k%b%B%K{white}%F{black}:%f%k%b "

# Start Sway
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  sway
fi
