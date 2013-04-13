#install cinnamon
sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-stable
sudo apt-get update
sudo apt-get install -y cinnamon
sudo apt-get install -y git
sudo apt-get install -y synapse
sudo apt-get install -y konsole
sudo apt-get install -y build-dep touchegg

cd ~/
git clone https://github.com/TroyDL/ubuntusettings.git
git clone https://github.com/TroyDL/termprefs.git
mv termprefs .matilde
cp .matilde/.vimrc ~/
cp .matilde/.bashrc ~/
cp .matilde/.bash_profile ~/





