# run this using ./update.sh
echo "This will update the repos by:"
echo " - Checkout the master branch"
echo " - Pulling from origin"
echo " - Pulling from upstream"
echo " - Pusing to origin"
echo " "

echo "Updating Robot repo"
cd robot
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

cd ..
