unset PREFIX
export ZSH="$HOME/.oh-my-zsh"
export ANDROID_HOME=/mnt/c/Users/thejoaov/AppData/Local/Android/Sdk  
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ADB=$ANDROID_HOME/platform-tools/adb
# export SPACESHIP_SKIP_2FA_UPGRADE=1

setopt PROMPT_CR
setopt PROMPT_SP
export PROMPT_EOL_MARK=""
export REACT_EDITOR=code

ZSH_THEME="spaceship"
plugins=(
  git
  yarn
  npm
  react-native
)

source $ZSH/oh-my-zsh.sh

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  node          # Node.js section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.zinit/bin" &> /dev/null && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/z-a-patch-dl \
    zdharma-continuum/z-a-as-monitor \
    zdharma-continuum/z-a-bin-gem-node

### End of Zinit's installer chunk
zplugin light zdharma-continuum/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions


# NVM initialization
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv initialization
# eval "$(rbenv init -)"

# zsh Aliases
alias zshrc="code $HOME/.zshrc"
alias srczsh="source $HOME/.zshrc"
alias gitcfg="git config --global --edit"

# git aliases
alias gpm="git pull origin master --no-edit"
alias gpmain="git pull origin main --no-edit"
alias gcfg="git config --global --edit"

# wsl aliases
# alias wt=wt.exe
# alias emulator=emulator.exe
# alias adb=adb.exe
# alias sdkmanager=toolsbinsdkmanager.bat
# alias android=android.bat