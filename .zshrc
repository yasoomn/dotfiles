# Created by newuser for 5.8

# Enable colors and change prompt:
autoload -U colors && colors



alias vim=nvim
source ~/Projects/zsh-autocomplete/zsh-autocomplete.plugin.zsh

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



# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t $(tmux ls | grep -v attached | head -1 | cut -f1 -d:) || env TERM=screen-256color tmux
fi
