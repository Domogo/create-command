# create-command
A script that creates a repository using the GitHub API then clones it into your Projects directory.

The script uses curl to access GitHub via it's API. It takes in a repository name as an argument and uses it to create a repo on GitHub.
After creating a repo the script pulls it into Projects directory.

### Set up

- Create a file called ```.cc_config``` inside of the repo directory
- add your Github OAuth token and username to the file, separated by the ```;``` delimiter, like so:

```
    YOUR_TOKEN_HERE;YOUR_USERNAME_HERE
```

- Source the script so you can use it:
 ```
    source /path/to/.create_command.sh
 ```
 
 - Using the script:
 
 ```
    create <repo_name>
 ```
 
 - (Optional) you can ```source``` the  script inside your ```.bash.rc``` so you don't have to do it manually:
 
 ```
    source path/to/your/script
 ```
