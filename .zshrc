# enable vim mode
bindkey -v

# Prompt
autoload -U promptinit; promptinit
prompt spaceship bart

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

export SPACESHIP_TIME_SHOW=true

zstyle ':autocomplete:*' min-input 2  # number of characters (integer)
# 0: Show completions immediately on each new command line.
# 1: Wait for at least 1 character of input.
#
# When completions don't fit on screen, show up to this many lines:
zstyle ':autocomplete:*' list-lines 4  # (integer)
# 💡 NOTE: The actual amount shown can be less.

zstyle ':autocomplete:*' widget-style menu-complete
# complete-word: (Shift-)Tab inserts the top (bottom) completion.
# menu-complete: Press again to cycle to next (previous) completion.
# menu-select:   Same as `menu-complete`, but updates selection in menu.
# ⚠️ NOTE: This can NOT be changed at runtime.
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t $(tmux ls | grep -v attached | head -1 | cut -f1 -d:) || env TERM=screen-256color tmux
fi

# Aliases

alias ls="lsd"
alias cat="bat"

pfetch
