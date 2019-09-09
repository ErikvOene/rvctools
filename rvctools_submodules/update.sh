echo "Updating Robot from upstream"
cd robot
git checkout master
git pull upstream master

echo "Updating Common from upstream"
cd ../common
git checkout master
git pull upstream master

echo "Updating SMTB from upstream"
cd ../smtb
git checkout master
git pull upstream master

echo "Updating Vision from upstream"

cd ../vision
git checkout master
git pull upstream master


echo "Please note that a git push is still requires to update the fork!!"
