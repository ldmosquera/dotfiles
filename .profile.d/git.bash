alias gb='git branch'
alias gs='git status'

alias gri='git rebase -i'
alias grc='git rebase --continue'
alias gra='git rebase --abort'

#git log oneline, including author
function glpn() {
	git log --pretty=format:"%h %ai %an"$'\t'"%s" "$@" | expand
	echo ''
}

#open gitk+git gui in the background
alias gg='( gitk --all & pid=$!; disown $pid; git gui & pid=$!; disown $pid )'

#git diff with vim as a pager
function gdi() {
	git diff "$@" | tr -d \\r | vim - -c "set syntax=diff" -R
}

