# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-completions/zsh-completions.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias ls='ls --color'
alias ll="ls -la"
alias c="cd .."
alias neofetch='clear; neofetch'
alias latexclear='rm latex.aux latex.fdb_latexmk latex.fls latex.log latex.out latex.synctex.gz'
alias latexca='cp ~/Personal/5-Models/1-LaTeX/latex_CA.tex .'
alias latexmodel='cp ~/Personal/5-Models/1-LaTeX/latex.tex .'
alias ubon='sudo systemctl start openvpn-client@ubivis-aws-user'
alias uboff='sudo systemctl stop openvpn-client@ubivis-aws-user'
alias ubrestart='sudo systemctl stop openvpn-client@ubivis-aws-user && sudo systemctl start openvpn-client@ubivis-aws-user'
alias ubstatus='sudo systemctl status openvpn-client@ubivis-aws-user'
alias java8='sudo archlinux-java set java-8-openjdk'
alias java11='sudo archlinux-java set java-11-openjdk'
alias java17='sudo archlinux-java set java-17-openjdk'
alias githubtoken='~/personal/2-shells/github.sh'
alias cleanstring='~/personal/2-shells/remove-special-characters.sh'
alias logisim-evolution='sudo archlinux-java set java-17-openjdk && logisim-evolution && sudo archlinux-java set java-11-openjdk'

export NODE_PATH=:/home/vicnetto/npm/lib/node_modules
