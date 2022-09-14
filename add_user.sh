#!/bin/bash
echo $1

user=$1
sudo adduser $user

# starts interactive script.
array=(Documents scripts PyProjects)
# array  containing the directories
for i in "${array[@]}"; do
        sudo cp -r /home/template/$i /home/$user/.
        sudo chown -R $user /home/$user
        sudo chgrp -R $user /home/$user
done
# adds directories and files from template
