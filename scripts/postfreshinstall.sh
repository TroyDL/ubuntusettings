#install cinnamon
sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-stable
sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y cinnamon
sudo apt-get install -y synapse
sudo apt-get install -y konsole
sudo apt-get install -y build-dep touchegg

cd ~/
git clone https://github.com/TroyDL/termprefs.git
git clone https://github.com/TroyDL/ubuntusettings.git
mv termprefs .matilde
cp .matilde/.vimrc ~/
cp .matilde/.bashrc ~/
cp .matilde/.bash_profile ~/
cp -r .matilde/.vim ~/
cp ~/ubuntusettings/konsole/* ~/.kde/share/apps/konsole/
cd ~/ubuntusettings/scripts/
./touchmods.sh
cd ~
cp ~/ubuntusettings/autostart/* ~/.config/autostart/
git config --global user.name "Troy Lonie"
git config --global user.email troydl@mail.fresnostate.edu

