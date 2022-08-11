git config --global user.name "XXX"
git config --global user.email "XXX@XXX"

# print directory
pwd
# list files
ls
# change directory
cd
# go one level up
cd ..
# open the manual of any commend
man ls
# quit manual 
q
# clear terminal
clear
# new directory
mkdir newfolder
# move file
mv xxx.txt newfolder/
# copy file
cp xxx.txt newxxx.txt
# concate files
cat xxx.txt
# remove file
rm xxx.txt
# remove directory
rm -r newfolder/

# VI text editor
# insert mode, press
i 
# exit insert mode and go back to command mode
esc
# command mode
# remove characters
x 
# delete line
dd
# save file
:w 
# quit
:q
# save and quit
:wq

# basic git commands
# create a .git folder within the cur dir
# the .git folder contains changes of file
git init
# .git is a hidden folder (not seen in GUI)
# to show all folders/files
ls -a
# untracked -> unmodified -> modified -> staged
# stage of lifecycle
git status
# untracked -> track files/staging
git add .
# change file, run again to stage change
git add .
# view changes
git diff
# view changed but not yet committed
git add .
git diff --staged
# commit after staging
git commit
# details: includes output of git diff
git commit -v
# dont want to use editor
git commit -m "commit msg"
# add all modified files
git commit -a
# ignore files
vi .gitignore
*.log   # add a pattern
:wq
# browse project history
git log # see all commits
q # quit
# 5 most recent commits
git log -5
# scroll up and down
J and K keys
# jump to the end and beginning
D and U keys
# show patch
git log -p  # similar to git diff
# format logs
git log --pretty=oneline
git log --pretty=full
git log --pretty=fuller
# time window
git log --since "2 months"
git log --until "2 months"
# graph-like format: useful for branches
fir log --graph
# undo mistakes
# ammend previous commit: add a new file
git add xx.txt
git commit --amend # replace the previous one
# revert an entire commit
git log
git revert XXXXXXXXX(commit identifier)
git log
git status
# clone repositories
git clone <repo url>
# use remote repositories
# show all remote repo
git remote
# add a new remote
git remote add <name> <url>
git remote
# download remote to local
git fetch origin
# merge remove and local
git merge <remote repo name> <local name>
git merge origin/master master
# pushing/sending changes to remote
git add xx.txt
git commit
git push <remote name><branch name>
git push origin master
# show remote details
git remote show origin
# fetch and merge
git pull # = git fetch + git merge
# tags in git
# e.g. denote release versions
# list all tags in the repo
git tag
# search for tags matching the glob pattern
git tag --list<glob>
# 2 tags: lightweight and annotated
# lightweight: immoveable, static pointers
git tag "1.0"
git show "1.0"
# annotated: more info & msg
git tag -a "1.1" -m "an annotated tag"
git show "1.1"
# share tags with others -> push tags
git push <remote name><tag name>
git push origin 1.1
# push all tags
git push <remote name> --tags
git push origin --tags
# branches and overflows
# head -> master: head points to the currently checked-out branch
# create a new branch which creates a another pointer to the current commit
git branch <newbranchname>
# see where branch pointers are pointing
git log
# move head pointer / swithch to the new branch
git checkout <newbranchname>
git commit
git log --graph
# create and switch to a new branch
git checkout -b <newbranchname>
# merge branches
git checkout master
git merge <outgoing branch name> # merging new branch into master
# fast forward: move pointer further up to the new point
# remove branch
git branch -d bug-fix #changes are alredy in the master branch
# merge commit: 2 parent commits that diverge
# branch A + branch B --> branch C
# resolve merge conflicts
# conflicts arise if 2 branchs edit the same part of the same file
# git cant resovle them automatically
# git requires human intervention to solve the issue
# after resolving conflicts in the file
git add <filename>
git commit
# remote branches: reference branches on a remote server
<remote name>/<branch name>    #e.g. origin/master
# share branches with others
git push <remote> <branch name>
git push origin mynewbranch
# create a tracking branch
git checkout origin mynewbranch
# a tracking branch is a local branch that tracks a single remote branch
# create remote tracking branches
git checkout -b branchname <remote>/<branchname>
git checkout --track origin/branchname
# check tracking branches
git branch -vvt   #verbose mode
# git fetch + merge = git pull
# delete branch
git push origin --delete <branchname>
# rebasing: alternative method to combine branches
# combining 2 branches but does not create a merge commit
# rewrites history of repo instead of creating a merge commit
# rebase newbranch to master
git rebase master
git log --branches --graph --oneline
# fast forward master to the tip of the new branch
git checkout master
git merge newbranchname
# never rebase public branches


# Github
# forking repo: writing on copies of repo
# clone a copy of reo to local
git clone <uri>
git log
ls
# keep fork up to date & add original repo (forked from) as remote ro local
git remote add <name of remote> <uri of repo>
git remote add upstream XXX@github.com:XXX.git
git remote show -v
# keep up to date to the original repo
git fetch upstream
git merge upstream master
# squashing commits: group commits
# reset commits and commit as one
git reset --soft HEAD~5 # soft keeps changes of commits but remove them; go back 5 commits
git log
git diff
git status
git diff --staged
git commit -v  #v: see the changes
git log -p
# squashing re-writes history
# careful with squashing after pushing public
git push origin <branchname> --force
# merge requests
# contribute to repo owned by sb else
git remote -v
git log branches --graph
# push branch to my forked repo
git push origin <name of branch>
# open a pull request on github for the original repo
# aliasing commands
# give commands customized names / specify shortcuts
git config --global alias.<name of alias><command>
# giving alias 'st' to command status
git config --global alias.st status
git st
# add default parameters
git config --global alias.gco checkout master
git gco
# aliasing git commit verbose mode
git config --global alias.cv commit -v











