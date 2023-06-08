# Set ZSH OPTIONS
setopt hist_expire_dups_first
setopt hist_ignore_dups     
setopt hist_ignore_space   
setopt hist_verify        
setopt share_history   

export XDG_CONFIG_HOME=$HOME/.config
export JAVA_HOME=/usr/lib/jvm/default

# Catppuccin theme for Fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:#e78284 \
--color=fg:#c6d0f5,header:#e78284,info:#ca9ee6,pointer:#f2d5cf \
--color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:#e78284"

# Set aliases
source $HOME/.config/zsh/aliases.sh

export LESS='-R --use-color -Dd+r$Du+b$'
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CPU_SSE42=false
export PARALLEL_JOBS=8

file_updates(){
while [ 1 ];
do
        watchdir=`pwd`
        newfile=/var/tmp/.newer
        touch $newfile
        find $watchdir -newer $newfile;
        touch -a -m $newfile;
        sleep 5;
done
}

