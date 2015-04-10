
rosm () {
    if [[ $@ ]]; then
        export ROS_MASTER_URI="http://$@:11311"
    else
        export ROS_MASTER_URI="http://localhost:11311"
    fi;
    echo $ROS_MASTER_URI;
}

gitcommit () {
    cmd="git commit -m \"$@\"";
    eval $cmd;
}

gitinteractiverebase () {
    cmd="git rebase -i HEAD~$@";
    eval $cmd;
}

gitaddcommit () {
    cmd="git commit -a -m \"$@\"";
    eval $cmd;
}

alias gitstatus='git status -s '
alias gitdiff='git diff '
alias gituncommit="git reset --soft 'HEAD^' "
alias gitfileunaddrecursive="git reset HEAD "
alias gitredo='git commit -c ORIG_HEAD '
