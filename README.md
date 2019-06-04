# create-command
Shell script that automates project creation. Creates project dir locally and repo on github.

The script uses curl to access GitHub via it's API. It takes in a repository name as an argument and uses it to create a repo on GitHub.
After creating a repo the script pulls it into Projects directory.

### Set up
To use this script add the parent directory to $PATH.
If your script is inside $HOME/scripts/ folder you can add this line to your .profile file:

    export PATH=$PATH:~/scripts
