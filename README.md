# create-command
Shell script that automates project creation. Creates project dir locally and repo on github.

The script uses curl to access GitHub via it's API. It takes in a repository name as an argument and uses it to create a repo on GitHub.
After creating a repo the script pulls it into Projects directory.

### Set up

- create a file called .cc_config inside of the repo directory
- add your Github OAuth token and username to the file, each in it's own row, like so:

```
    YOUR_TOKEN_HERE
    YOUR_USERNAME_HERE
```

- source the script so you can use it:
 ```
    source /path/to/.create_command.sh
 ```
 
 - using the script:
 
 ```
    create <repo_name>
 ```
