#!/bin/python3
import json
import subprocess 
import os
#FIND ALL GIT REPOS
def get_all_git():
    gits=subprocess.check_output('./gitnotifyer.sh').decode('ascii')
    return(gits)
# create config
def create_config(config):
    cwd=os.getcwd()
    os.chdir(os.path.expanduser("~"))
    with open('.gitnotifyrc', 'w+') as outfile:
        json.dump(config, outfile)
    os.chdir(cwd)


if __name__ == "__main__":
    config={}
    create_config(config)
