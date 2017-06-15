#!/usr/bin/env python3

# This is a script for saving files to my git repository without comment

import os
import datetime
from subprocess import call

def call_shell(command):
    call(command, shell=True)

def sync_repo(home_directory_path, repo_name):
    os.chdir(home_directory_path)
    local_repo_name = "{0}{1}".format(home_directory_path, repo_name)
    os.chdir(local_repo_name)
    call_shell("pwd")
    call_shell("git pull")
    call_shell("git add .")
    git_commit_message = "git commit -m '{0}'".format(now)
    call_shell(git_commit_message)
    call_shell("git push")

now = datetime.datetime.now()

home_directory_path = "/Users/chrissturtevant0/"

sync_repo(home_directory_path, "notes")
# sync_repo(home_directory_path, ".zprezto")