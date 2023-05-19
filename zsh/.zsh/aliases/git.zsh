# git shortcut alias
alias g=git
# prettier & colorfull git log
alias gitlog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# clean merged branches
#alias git-clean-merged ='git fetch -p && for branch in $(git branch -vv | grep ": gone]" | awk "{print $1}"); do git branch -D $branch; done'
