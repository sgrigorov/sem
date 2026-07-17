# REPOSITORY="vagrant"
REPOSITORY=$(pwd | rev | cut -d "/" -f 1 | rev)

git remote -v | grep "origin	git@github.com:sgrigorov/$REPOSITORY.git (push)" || git remote set-url --add --push origin git@github.com:sgrigorov/$REPOSITORY.git
git remote -v | grep "origin	git@gitlab.com:sgrigorov/$REPOSITORY.git (push)" || git remote set-url --add --push origin git@gitlab.com:sgrigorov/$REPOSITORY.git


# git remote set-url --add --push origin git@gitlab.com:sgrigorov/vagrant.git
# git remote set-url --add --push origin git@github.com:sgrigorov/vagrant.git

# git config -l | grep remote.origin.pushurl=git@gitlab.com:sgrigorov/sem.git || git config --add remote.origin.pushurl git@gitlab.com:sgrigorov/sem.git
# git config -l | grep remote.origin.pushurl=git@github.com:sgrigorov/sem.git || git config --add remote.origin.pushurl git@github.com:sgrigorov/sem.git

# git config --unset remote.origin.pushurl git@gitlab1.com:sgrigorov/sem.git

echo " My commit  message" > .gitmessage
git config commit.template .gitmessage
