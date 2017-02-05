set -x

ssh-add ~/.ssh/id_rsa
eval $(ssh-agent -s)
ssh -T git@github.com

git config --global user.name 'mnhuttner'
git config --global user.email 'mhuttner@gmail.com'
git config --system core.editor vi

git remote add origin git@github.com:mnhuttner/git-scripts
git pull https://mnhuttner:Nojoker123@github.com/mnhuttner/git-scripts
git push -u origin master
