# create-command
Shell script that automates project creation. Creates project dir locally and repo on github.

## GitHub API
The script uses curl to access GitHub via it's API. It takes in an argument which is the repo name and uses it to make a repo with the same name on GitHub. After creating a repo it puls it into Projects directory.
