export PATH=/usr/local/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/dotfiles/.git-completion.bash ]; then
  . ~/dotfiles/.git-completion.bash
fi

if [ -f ~/dotfiles/.terminal-styling.bash ]; then
  . ~/dotfiles/.terminal-styling.bash
fi

alias fr="foreman run"
alias fs="foreman start"
alias hr="heroku run"
alias bx='bundle exec'
alias s='spring'
alias cdd="cd ../ && cd -"

alias clear_all_logs="find ~/workspace -iname '*.log' -exec dd if=/dev/null of={} \;"
alias git_cleanup='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias git_update_sub_folders='for REPO in `ls`; do (cd "$REPO"; git pull); done;'

alias tails='tail -f log/development.log'
alias oinkers='oink --threshold=1 log/oink.log'
alias unpickle_db='fr rake db:drop && fr rake db:create && fr rake:migrate && fr rake db:test:load && fr rake db:seed'
