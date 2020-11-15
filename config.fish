set -g fish_user_paths "/usr/local/opt/php@7.3/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/php@7.3/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/mysql@5.7/bin" $fish_user_paths
set -g fish_user_paths "/Users/camille/.npm-global/bin" $fish_user_paths
set -g fish_user_paths "/Users/camille/.symfony/bin" $fish_user_paths
set -gx GPG_TTY (tty)
set -gx NODE_OPTIONS "--max-old-space-size=4096"
ulimit -n 64000
