set -x

eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
ssh -vT git@github.com
git clone git@github.com:/mnhuttner/git-scripts  git-scripts
git clone git@github.com:/mnhuttner/ansible-test ansible-test
