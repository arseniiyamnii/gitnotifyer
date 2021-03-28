#!/bin/python3
import json
import subprocess 

#FIND ALL GIT REPOS
def get_all_git():
    gits=subprocess.check_output('./gitnotifyer.sh').decode('ascii')
    return(gits)
# create config
def create_config():
    config={}
    with open('.gitnotifyrc', 'w+') as outfile:
        json.dump(config, outfile)

create_config()
