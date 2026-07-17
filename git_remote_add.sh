# REPOSITORY="vagrant"
REPOSITORY=$(pwd | rev | cut -d "/" -f 1 | rev)

git remote -v | grep github || git remote set-url --add --push origin git@github.com:sgrigorov/$REPOSITORY.git
git remote -v | grep gitlab || git remote set-url --add --push origin git@gitlab.com:sgrigorov/$REPOSITORY.git


#git remote set-url --add --push origin git@gitlab.com:sgrigorov/vagrant.git
#git remote set-url --add --push origin git@github.com:sgrigorov/vagrant.git


echo " My commit  message" > .gitmessage
git config commit.template .gitmessage
