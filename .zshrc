export CLICOLOR=1
export GPG_TTY=${TTY}

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'

alias rshell='source ~/.zshrc'

alias python='/usr/bin/python3'
alias vim='/opt/homebrew/bin/vim'

function spectrum_ls() {
  for code in {000..255}; do
    print -P -- "$code: %F{$code}Test%f"
  done
}

function scan_local_network() {
   ifconfig | grep broadcast | arp -a
}

autoload -U colors && colors

PROMPT="%{$fg[green]%}%n%{$reset_color%}%{$fg[white]%}:%{$fg[yellow]%}%(4~|%-1~/.../%2~|%3~) %{$reset_color%}%(!|>>>|>) "
RPROMPT="%(?.%{$fg[green]%}✔︎%{$reset_color%}.%{$fg[red]%}✗%{$reset_color%})"
