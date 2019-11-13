#!/bin/bash

function create() {
    # create an empty repository on your local machine and GitHub
    repo_name=$1
    cd
    cd Projects/
    # get authkey and username from .cc_config
    v=$(cat create-command/.cc_config)
    authkey="$(echo $v | cut -d';' -f1)"
    username="$(echo $v | cut -d';' -f2)"

    # Use github api to create a repo
    curl -d '{"name": "'"${repo_name}"'", "auto_init": "true"}' -H "Content-Type: application/json" -H "Authorization: Bearer ${authkey}" -X POST https://api.github.com/user/repos

    git clone git@github.com:${username}/${repo_name}.git
    cd ${repo_name}

}

function ginit() {
    # push your project to GitHub
    repo_name=${PWD##*/}
    # get authkey and username from .cc_config
    v=$(cat $HOME/Projects/create-command/.cc_config)
    authkey="$(echo $v | cut -d';' -f1)"
    username="$(echo $v | cut -d';' -f2)"

    # create a repo on github
    curl -d '{"name": "'"${repo_name}"'"}' -H "Content-Type: application/json" -H "Authorization: Bearer ${authkey}" -X POST https://api.github.com/user/repos
    # init locally and push it up.
    echo "# ${repo_name}" >> README.md
    git init
    git add .
    git commit -m "Initial commit"
    git remote add origin git@github.com:$username/${repo_name}.git
    git push -u origin master
}

function gdelete() {
    # From your repo directory remove repo from GitHub
    repo_name=${PWD##*/}
    # get authkey and username from .cc_config
    v=$(cat $HOME/Projects/create-command/.cc_config)
    authkey="$(echo $v | cut -d';' -f1)"
    username="$(echo $v | cut -d';' -f2)"

    # delete a github repo
    curl -H "Content-Type: application/json" -H "Authorization: Bearer ${authkey}" -X DELETE https://api.github.com/repos/${username}/${repo_name}
}

function rl() {
    # list repositories
    # get authkey and username from .cc_config
    v=$(cat $HOME/Projects/create-command/.cc_config)
    authkey="$(echo $v | cut -d';' -f1)"
    username="$(echo $v | cut -d';' -f2)"

    # list all GitHub repositories
    curl -H "Content-Type: application/json" -H "Authorization: Bearer ${authkey}" -X GET https://api.github.com/user/repos
}

function commit() {
    # get message
    message=$1
    # add and commit using message
    git add . && git commit -m "${message}"
}
