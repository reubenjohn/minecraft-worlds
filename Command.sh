echo on
git add -A
echo Enter recent changes: 
read message
echo About to push your changes: --$message-- to github please review your message and ensure that you have a working network connection.
echo Press any key to continue...
echo Or, close the window to abort.
read something
git commit -m "$message"
git push saves master
echo Process complete
echo Press any key to continue...
read something