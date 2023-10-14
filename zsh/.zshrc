# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# Plugins
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/todoist-cli/todoist_functions.sh
# source ~/.zsh/zsh-completions/zsh-completions.plugin.zsh

# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# source ~/.zsh/zsh-z/zsh-z.plugin.zsh

# Aliases
alias ls='ls --color'
alias ll="ls -la"
alias c="cd .."
alias neofetch='clear; neofetch'
alias latexclear='rm latex.aux latex.fdb_latexmk latex.fls latex.log latex.out latex.synctex.gz'
alias latexca='cp ~/Personal/5-Models/1-LaTeX/latex_CA.tex .'
alias latexmodel='cp ~/Personal/5-Models/1-LaTeX/latex.tex .'
alias java8='sudo archlinux-java set java-8-openjdk'
alias java11='sudo archlinux-java set java-11-openjdk'
alias java17='sudo archlinux-java set java-17-openjdk'
alias githubtoken='~/personal/2-shells/github.sh'
alias clearstr='~/victor/shells/remove-special-characters.sh'
alias logisim-evolution='sudo archlinux-java set java-17-openjdk && logisim-evolution && sudo ar
chlinux-java set java-11-openjdk'
alias gpu-switch='prime-offload && optimus-manager --switch nvidia'
alias ubivis-git-email='git config --local user.email victor.netto@ubivis.io'
alias utfpr-2022-1='zathura /home/vicnetto/personal/6-victor/1-utfpr/1-matérias/5-2022.1/disciplinas_2022.1_Victor.pdf'
alias fullpath='readlink -f $1'
alias groot='cd $(git root)'
alias ls='exa'
alias cat='bat --style=plain,header'
alias setup-external-screen='nitrogen --restore && setxkbmap br && /home/vicnetto/victor/shells/remove-caps-from-keyboard.sh'
alias tnvpn='sudo openconnect -u demouran1u@etu --authgroup=Universite-de-Lorraine vpn.univ-lorraine.fr'
# alias tnon='sudo vpnc --enable-weak-encryption tn.conf'
# alias tnoff='sudo vpnc-disconnect'
alias please='sudo'
alias ovim='/usr/bin/vim'
alias vim='nvim'
alias vi='nvim'
alias todo='todoist-cli --color'

# cd () { cd "$1" && ls ;} 
cd() {
	builtin cd $@
	ls
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
