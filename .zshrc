# Oh My Zsh
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
alias zshrc='nvim ~/.zshrc'
alias szshrc='source ~/.zshrc'

# source .env file
if [ -f ~/.env ];
then
    set -a; source ~/.env; set +a
fi

# replace - find and replace in files
function replace {
    find ./ -type f -exec sed -i -e "s/$1/$2/g" {} \;
}

# gch - git checkout via fzf
gch() {
    git branch | grep -v "^\*" | fzf --height=20% --reverse --info=inline | xargs git checkout
}

# tmux conf
alias tmuxrc='nvim ~/.tmux.conf'

# nvim conf
alias nvimrc='nvim ~/.config/nvim/init.vim'
# for nvim colors to match
COLORTERM="truecolor"
export BAT_THEME="Nord"

