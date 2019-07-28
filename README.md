# create-command
A script with a set of functions to automate project creating.
- create function
- ginit function

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

 - (Optional) you can ```source``` the  script inside your ```.bash.rc``` so you don't have to do it manually:

 ```
    source path/to/your/script
 ```

### create function
Creates a repository on GitHub and locally inside your Projects folder.


 - Using the function:

 ```
    create <repo_name>
 ```

 ### ginit function
 The function creates a repository on GitHub (using GitHub API), with the same name of your project's dir locally, creates a README.md, performs
 ```
    git init
    git add .
    git commit -m "Initial commit"
 ```
 Then, ```ginit``` adds the created repository to your remote origin and pushes your project to GitHub using the standard
 ``` git push -u origin master ```

 - Usage:

 Use ``` ginit ``` inside the root of your project

 ### gdelete function
 Required: You local project directory to have the same name as the GitHub one.
 Deletes the GitHub repository of your project.

 Running ``` gdelete ``` inside the root of your project will delete the repository on GitHub.

 The function reads the directory name and assumes it is the name of the repository on GitHub waiting to be deleted.

 Make sure your Auth key has the ``` delete repo ``` scope.
