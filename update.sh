# run this using ./update.sh
echo "First update this repo using a git pull command in the master 
branch"
git checkout master
git pull origin master
echo " "

echo "This will update the repos by:"
echo " - Checkout the master branch"
echo " - Pulling from origin"
echo " - Pulling from upstream"
echo " - Pusing to origin"
echo " "

echo "Updating Robot repo"
cd rvctools_submodules/robot
git checkout master
git pull origin master
git pull upstream master
git push origin master
echo "Robot finished"
echo " "

echo "Updating Common"
cd ../common
git checkout master
git pull origin master
git pull upstream master
git push origin master
echo "Common finished"
echo " "

echo "Updating SMTB"
cd ../smtb
git checkout master
git pull origin master
git pull upstream master
git push origin master
echo "SMTB finished"
echo " "

echo "Updating Vision"
cd ../vision
git checkout master
git pull origin master
git pull upstream master
git push origin master
echo "Vision finished" 
echo " "

cd ../..

echo "Please note only the submodules are updated. This repo still needs 
to be updated by... git add, git commit, git push"
