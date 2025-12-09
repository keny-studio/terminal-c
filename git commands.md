| $${\color{red}git}$$ | |
|------|---------|
| COMMAND | ACTION |
| | |
| git help | show help |
| git -version | show version |
| git config --global user.name "NAME" | set username |
| git config --global user.email EMAIL@GMAIL.COM | set email |
| git config --global color.ui auto | enable color highlighting |
| git mkdir NAME | create directory |
| git cd NAME | enter directory |
| git init | initialize repositorium |
| git status | repositorium status |
| git add Readme.txt | add readme.txt to staging area | 
| git comit -m "MESSAGE" | comit staged changes withh message |
| git log | show comits history |
| git add FILE-NAME| add file/-s to staging area
| git add FOLDER-NAME/ | add folder to staging area |
| git add "*.type" | add all .type files to staging area | 
| git add --all | add all files to staging area |
| git add . | ^ |
| git diff | show changes not staged for comit |
| git comit -a -m "MESSAGE" | auto stage tracked files and comit with message | 
| git reset FILE-NAME | unstage file, keep changes in working area
| git reset -soft HEAD^ | undo last comit, keep changes in staging area |
| git reset -hard HEAD^ | undo last comit, remove changes in staging area |
| git clone URL-ADRESS | clone remote respository to local |
| git branch BRANCH-NAME | create branch |
| git branch | show current and all branches |
| git checkout BRANCH-NAME | switch to branch from master |
| git merge BRANCH-NAME | merge branch with master |
| git branch -d BRANCH-NAME | delete branch |
| git fetch | fetch any changes from remote to current repository |
| git push BRANCH-NAME | transmit commits from local to remote branch |
| git pull | fetch and merge changes from remotee to current repository |
