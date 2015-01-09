echo on
git status
echo If you see anything in RED above, then that means that the local changes that you made after your last Push are going to be backed up and then removed from the folder!
echo Dont worry, this process is reversible, i.e. your changes can be brought back with the right technical support!
echo WARNING! This backup will replace your old backup!
echo Press any key to continue with the procedure...
echo Or, close the window to abort
read
echo Backing up your local changes:
git branch -d backup
git checkout -b backup
git add -A
git commit -m "backup"
git status
git checkout master
echo
echo Backup process complete, now getting rid of your local changes:
git reset --hard
git clean -f -d
echo "-------------------------------------------------"
git status
echo If you dont see anything RED below the line above, then the cleanup has worked well and you can press Enter to proceed.
echo Otherwise, something has gone wrong, and you should manually delete the files listed above before you proceed.
echo Or, you could simply seek technical assistance.
read
echo "-------------------------------------------------"
git status
echo If you dont see anything RED below the line above for the last time, proceed by pressing enter!
echo Otherwise, it is a good time to abort by closing the window and seeking technical assistance!
read
echo About to pull remote changes on github, please ensure that you have a working network connection before proceeding.
echo Press the Enter key to continue...
echo Or, close the window to abort.
git pull saves master
echo Process complete
echo Press the Enter key to continue...
read